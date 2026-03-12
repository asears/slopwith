//! Sopwith engine core — WebAssembly module
//!
//! Compiled to `wasm32-unknown-unknown`.  Exposes a minimal surface so that
//! `platform_web/www/main.js` can:
//!   1. Load the extracted asset pack produced by `hexlab`.
//!   2. Obtain raw pointers to sprite, palette, and table data.
//!   3. Drive a fixed-step game loop tick from a `requestAnimationFrame` callback.
//!
//! ## Asset pack format (`sopwith.asset-pack.v1`)
//!
//! The pack is a flat binary produced by `hexlab`.  The matching JSON manifest
//! (`assets_pack.json`) describes each entry's `name`, `asset_type`,
//! `byte_offset`, and `byte_length`.  JavaScript loads the manifest, then passes
//! the raw bytes here via `load_asset_pack`.
//!
//! ## Coordinate system
//!
//! CGA 320×200 pixels.  Y increases downward (inverted-Y, as on the original
//! hardware).  The ground horizon sits at approximately Y = 64 (0x40).

// No wasm-bindgen; plain #[no_mangle] extern "C" exports work with bare
// WebAssembly.instantiateStreaming and need no JS runtime glue.

// ---------------------------------------------------------------------------
// Runtime state (heap-allocated, single-instance)
// ---------------------------------------------------------------------------

struct Engine {
    /// Raw bytes of the asset pack blob.
    asset_pack: Vec<u8>,

    /// Angle-to-Y-displacement lookup (table_001, 512 entries, u8).
    ///
    /// Indexed by the plane's current angle counter (0–511).
    /// Subtract the baseline 0x40 to obtain a signed Y-velocity component.
    trig_y: Vec<u8>,

    /// Primary terrain height map, section A (table_003, 290 entries, u8).
    ///
    /// `terrain_a[scroll_x % len]` = ground Y at that column.
    terrain_a: Vec<u8>,

    /// Secondary fine-detail displacement added to `terrain_a` (table_005, 390 bytes).
    terrain_detail: Vec<u8>,

    /// Short object path / projectile arc (table_004, 100 entries, u8).
    projectile_arc: Vec<u8>,

    /// Plane X position in pixels.
    plane_x: f32,
    /// Plane Y position in pixels.
    plane_y: f32,
    /// Plane speed in pixels/tick.
    speed: f32,
    /// Plane angle index (0–511, wraps).
    angle: u16,
    /// Remaining frames in active barrel roll.
    roll_frames: u8,
    /// Fire-button debounce flag.
    fire_latch: bool,
    /// Bomb-button debounce flag.
    bomb_latch: bool,
    /// Cooldown in ticks before next bullet can spawn.
    fire_cooldown: u8,
    /// Cooldown in ticks before next bomb can spawn.
    bomb_cooldown: u8,
    /// Mutable world-anchored targets.
    targets: Vec<Target>,
    /// Active projectiles.
    projectiles: Vec<Projectile>,
    /// Score for target destruction.
    score: u32,
    /// Horizontal scroll offset (pixel columns).
    scroll_x: u32,
    /// Frames elapsed since start.
    frame: u32,
}

#[derive(Clone, Copy)]
struct Target {
    world_x: f32,
    y: f32,
    kind: u8,
    alive: bool,
}

#[derive(Clone, Copy)]
struct Projectile {
    x: f32,
    y: f32,
    vx: f32,
    vy: f32,
    kind: u8,
    age: u16,
    alive: bool,
}

impl Engine {
    fn new() -> Self {
        Engine {
            asset_pack: Vec::new(),
            trig_y: Vec::new(),
            terrain_a: Vec::new(),
            terrain_detail: Vec::new(),
            projectile_arc: Vec::new(),
            plane_x:  160.0,
            plane_y:   64.0,
            speed:      1.8,
            angle:        0,
            roll_frames:  0,
            fire_latch: false,
            bomb_latch: false,
            fire_cooldown: 0,
            bomb_cooldown: 0,
            targets: Vec::new(),
            projectiles: Vec::new(),
            score: 0,
            scroll_x:     0,
            frame:        0,
        }
    }

    fn world_period(&self) -> f32 {
        let base = if self.terrain_a.is_empty() { 320 } else { self.terrain_a.len() };
        (base + self.terrain_detail.len().max(1)) as f32
    }

    fn world_x_wrap(&self, x: f32) -> f32 {
        let p = self.world_period();
        x.rem_euclid(p)
    }

    fn signed_lookup(&self, index: usize) -> f32 {
        if self.trig_y.is_empty() {
            return 0.0;
        }
        (self.trig_y[index % self.trig_y.len()] as i16 - 0x40) as f32 / 32.0
    }

    fn terrain_y_world(&self, world_x: f32) -> f32 {
        if self.terrain_a.is_empty() {
            return 150.0;
        }
        let ix = self.world_x_wrap(world_x) as usize;
        let base = self.terrain_a[ix % self.terrain_a.len()] as f32;
        let detail = if self.terrain_detail.is_empty() {
            0.0
        } else {
            self.terrain_detail[ix % self.terrain_detail.len()] as f32 - 29.0
        };

        let mountain_seed = self.signed_lookup((ix * 3) & 0x1FF) * 10.0;
        let mountain_layer = self.signed_lookup((ix + 96) & 0x1FF) * 6.0;
        let mountain = (mountain_seed + mountain_layer).clamp(-10.0, 14.0);

        (140.0 + (75.0 - base) * 1.45 + detail * 0.65 - mountain).clamp(80.0, 198.0)
    }

    fn spawn_targets_if_needed(&mut self) {
        if !self.targets.is_empty() {
            return;
        }
        let spacing = 46.0;
        let count = 42;
        for i in 0..count {
            let wx = i as f32 * spacing + 30.0;
            let ground = self.terrain_y_world(wx);
            let kind = match i % 7 {
                0 | 1 | 2 => 0,
                3 | 4 => 1,
                _ => 2,
            };
            let y = match kind {
                0 => ground - 4.0,
                1 => ground - 6.0,
                _ => ground - 10.0,
            };
            self.targets.push(Target {
                world_x: self.world_x_wrap(wx),
                y,
                kind,
                alive: true,
            });
        }
    }

    fn spawn_bullet(&mut self) {
        let heading = self.angle as usize;
        let vx = self.signed_lookup((heading + 128) & 0x1FF) * 3.0;
        let vy = self.signed_lookup(heading & 0x1FF) * 2.6;
        self.projectiles.push(Projectile {
            x: self.plane_x,
            y: self.plane_y,
            vx,
            vy,
            kind: 0,
            age: 0,
            alive: true,
        });
    }

    fn spawn_bomb(&mut self) {
        self.projectiles.push(Projectile {
            x: self.plane_x - 1.0,
            y: self.plane_y + 3.0,
            vx: self.speed * 0.35,
            vy: 0.8,
            kind: 1,
            age: 0,
            alive: true,
        });
    }

    fn hit_target(&mut self, world_x: f32, y: f32, radius: f32) -> bool {
        for target in &mut self.targets {
            if !target.alive {
                continue;
            }
            let dx = (target.world_x - world_x).abs();
            let dy = (target.y - y).abs();
            let hit_r = match target.kind {
                0 => 5.0,
                1 => 6.0,
                _ => 7.0,
            };
            if dx <= radius + hit_r && dy <= radius + hit_r {
                target.alive = false;
                self.score = self.score.saturating_add(match target.kind {
                    0 => 15,
                    1 => 30,
                    _ => 60,
                });
                return true;
            }
        }
        false
    }

    fn update_projectiles(&mut self) {
        let mut active = std::mem::take(&mut self.projectiles);
        for projectile in &mut active {
            if !projectile.alive {
                continue;
            }

            projectile.x = self.world_x_wrap(projectile.x + projectile.vx);
            projectile.y += projectile.vy;
            projectile.age = projectile.age.saturating_add(1);

            if projectile.kind == 1 {
                projectile.vy += 0.11;
                projectile.vx *= 0.994;
            }

            let terrain_y = self.terrain_y_world(projectile.x);
            if projectile.y >= terrain_y {
                projectile.alive = false;
                continue;
            }

            if projectile.age > if projectile.kind == 0 { 80 } else { 210 } {
                projectile.alive = false;
                continue;
            }

            let hit = self.hit_target(
                projectile.x,
                projectile.y,
                if projectile.kind == 0 { 2.5 } else { 7.0 },
            );
            if hit {
                projectile.alive = false;
            }
        }
        self.projectiles = active;
    }

    // Slice the asset pack using manifest metadata supplied by JS.
    fn extract_table(&self, byte_offset: usize, byte_length: usize) -> Vec<u8> {
        let end = (byte_offset + byte_length).min(self.asset_pack.len());
        if byte_offset >= self.asset_pack.len() {
            return Vec::new();
        }
        self.asset_pack[byte_offset..end].to_vec()
    }

    /// Advance the simulation by one fixed-step tick.
    ///
    /// `input_flags` is a bitmask from JS key state:
    ///   bit 0 = left arrow / A
    ///   bit 1 = right arrow / D
    ///   bit 2 = up arrow / W
    ///   bit 3 = down arrow / S
    ///   bit 4 = space / Z   (fire pellet)
    ///   bit 5 = B           (drop bomb)
    ///   bit 6 = X           (barrel roll)
    fn tick(&mut self, input_flags: u32) {
        self.spawn_targets_if_needed();

        // --- Input -----------------------------------------------------------
        if input_flags & 0b0001 != 0 {
            self.angle = self.angle.wrapping_sub(3) & 0x1FF;
        }
        if input_flags & 0b0010 != 0 {
            self.angle = self.angle.wrapping_add(3) & 0x1FF;
        }

        if input_flags & 0b0100 != 0 {
            self.speed = (self.speed + 0.04).clamp(1.2, 3.8);
        }
        if input_flags & 0b1000 != 0 {
            self.speed = (self.speed - 0.05).clamp(0.95, 3.8);
        }

        if input_flags & 0b1000000 != 0 && self.roll_frames == 0 {
            self.roll_frames = 28;
        }

        let fire_down = input_flags & 0b10000 != 0;
        if fire_down && !self.fire_latch && self.fire_cooldown == 0 {
            self.spawn_bullet();
            self.fire_cooldown = 4;
        }
        self.fire_latch = fire_down;

        let bomb_down = input_flags & 0b100000 != 0;
        if bomb_down && !self.bomb_latch && self.bomb_cooldown == 0 {
            self.spawn_bomb();
            self.bomb_cooldown = 16;
        }
        self.bomb_latch = bomb_down;

        // --- Physics (trig lookup) -------------------------------------------
        let angle_ix = self.angle as usize;
        let y_delta = self.signed_lookup(angle_ix) * self.speed;
        let x_delta = self.signed_lookup((angle_ix + 128) & 0x1FF) * self.speed;

        self.plane_x = self.world_x_wrap(self.plane_x + x_delta.max(0.5));
        self.plane_y += y_delta;

        if input_flags & 0b0100 != 0 {
            self.plane_y -= 0.35;
        }
        if input_flags & 0b1000 != 0 {
            self.plane_y += 0.50;
        }

        if self.roll_frames > 0 {
            self.angle = self.angle.wrapping_add(18) & 0x1FF;
            self.roll_frames -= 1;
        }

        // Clamp to playfield bounds
        if self.plane_y < 12.0  { self.plane_y = 12.0; }
        if self.plane_y > 198.0 { self.plane_y = 198.0; }

        // --- Scroll ----------------------------------------------------------
        let scroll_follow = self.plane_x - 100.0;
        self.scroll_x = self.world_x_wrap(scroll_follow) as u32;

        if self.fire_cooldown > 0 {
            self.fire_cooldown -= 1;
        }
        if self.bomb_cooldown > 0 {
            self.bomb_cooldown -= 1;
        }

        self.update_projectiles();

        // --- Collision with terrain ------------------------------------------
        let ground = self.terrain_y_world(self.plane_x);
        if self.plane_y >= ground {
            self.plane_y = 58.0;
            self.speed = 1.6;
            self.angle = 480;
        }

        self.frame += 1;
    }

    fn target_count(&self) -> u32 {
        self.targets.iter().filter(|t| t.alive).count() as u32
    }

    fn projectile_count(&self) -> u32 {
        self.projectiles.iter().filter(|p| p.alive).count() as u32
    }

    fn nth_alive_target(&self, mut index: usize) -> Option<Target> {
        for t in &self.targets {
            if !t.alive {
                continue;
            }
            if index == 0 {
                return Some(*t);
            }
            index -= 1;
        }
        None
    }

    fn nth_alive_projectile(&self, mut index: usize) -> Option<Projectile> {
        for p in &self.projectiles {
            if !p.alive {
                continue;
            }
            if index == 0 {
                return Some(*p);
            }
            index -= 1;
        }
        None
    }
}

// ---------------------------------------------------------------------------
// Single global engine instance (WASM has one linear memory)
// ---------------------------------------------------------------------------

static mut ENGINE: Option<Engine> = None;
/// Scratch buffer for JS→WASM bulk-data transfer (byte slices).
static mut SCRATCH: Vec<u8> = Vec::new();

fn engine() -> &'static mut Engine {
    unsafe {
        if ENGINE.is_none() {
            ENGINE = Some(Engine::new());
        }
        ENGINE.as_mut().unwrap()
    }
}

// ---------------------------------------------------------------------------
// Public API — raw #[no_mangle] extern "C" exports
// ---------------------------------------------------------------------------
// JS calls these directly after bare WebAssembly.instantiateStreaming.
// Byte-slice arguments use alloc_buf / commit_pack so JS can write into
// WASM linear memory without wasm-bindgen.

/// Allocate a scratch buffer of `len` bytes inside WASM memory.
/// Returns a pointer (u32 offset into linear memory) that JS can write to via:
///   new Uint8Array(wasm.memory.buffer).set(srcBytes, ptr);
/// After writing, call commit_pack(len) to consume the buffer.
#[no_mangle]
pub extern "C" fn alloc_buf(len: u32) -> u32 {
    unsafe {
        SCRATCH.clear();
        SCRATCH.resize(len as usize, 0);
        SCRATCH.as_ptr() as u32
    }
}

/// Consume the previously allocated scratch buffer as the asset pack.
/// Must be called after alloc_buf + writing bytes into WASM memory.
#[no_mangle]
pub extern "C" fn commit_pack(len: u32) {
    let e = engine();
    unsafe {
        e.asset_pack = SCRATCH[..len as usize].to_vec();
    }
}

/// Initialise the engine.  Call once after the WASM module loads.
#[no_mangle]
pub extern "C" fn init() {
    unsafe {
        ENGINE = Some(Engine::new());
    }
}

/// After loading the asset pack, register each table by its byte range.
///
/// Call once per table using values read from `assets_pack.json`:
///   table_id: 1 = trig_y, 2 = (unused), 3 = terrain_a, 4 = projectile_arc, 5 = terrain_detail
#[no_mangle]
pub extern "C" fn register_table(table_id: u32, byte_offset: u32, byte_length: u32) {
    let e = engine();
    let data = e.extract_table(byte_offset as usize, byte_length as usize);
    match table_id {
        1 => e.trig_y         = data,
        3 => e.terrain_a      = data,
        4 => e.projectile_arc = data,
        5 => e.terrain_detail = data,
        _ => {}
    }
    e.spawn_targets_if_needed();
}

/// Advance the simulation by one tick.  Call from `requestAnimationFrame`.
///
/// `input_flags` bitmask: bit0=left, bit1=right, bit2=up, bit3=fire.
#[no_mangle]
pub extern "C" fn tick(input_flags: u32) {
    engine().tick(input_flags);
}

/// Current plane X position (0–319), returned as fixed-point (multiply by 1/256).
/// We use u32 because WASM i32 exports map cleanly; JS reads f32 from memory instead.
/// For simplicity we return the integer part.
#[no_mangle]
pub extern "C" fn plane_x() -> f32 { engine().plane_x }

/// Current plane Y position (0–199).
#[no_mangle]
pub extern "C" fn plane_y() -> f32 { engine().plane_y }

/// Current angle index (0–511).
#[no_mangle]
pub extern "C" fn plane_angle() -> u32 { engine().angle as u32 }

/// Current score.
#[no_mangle]
pub extern "C" fn score() -> u32 { engine().score }

/// Active barrel roll flag.
#[no_mangle]
pub extern "C" fn rolling() -> u32 { (engine().roll_frames > 0) as u32 }

/// Horizontal scroll offset.
#[no_mangle]
pub extern "C" fn scroll_x() -> u32 { engine().scroll_x }

/// Current frame counter.
#[no_mangle]
pub extern "C" fn frame_count() -> u32 { engine().frame }

/// Return the terrain Y value at a given screen column (uses current scroll_x).
#[no_mangle]
pub extern "C" fn terrain_y_at(screen_col: u32) -> u32 {
    let e = engine();
    let world_x = e.scroll_x as f32 + screen_col as f32;
    e.terrain_y_world(world_x) as u32
}

/// Return the trig-table Y displacement for any angle index.
#[no_mangle]
pub extern "C" fn trig_y_at(angle: u32) -> i32 {
    let e = engine();
    if e.trig_y.is_empty() { return 0; }
    let idx = (angle as usize) % e.trig_y.len();
    e.trig_y[idx] as i32 - 0x40
}

/// Number of alive world objects (cows/tanks/buildings).
#[no_mangle]
pub extern "C" fn target_count() -> u32 {
    engine().target_count()
}

#[no_mangle]
pub extern "C" fn target_x(index: u32) -> f32 {
    let e = engine();
    if let Some(target) = e.nth_alive_target(index as usize) {
        let world = e.world_x_wrap(target.world_x - e.scroll_x as f32);
        if world < 320.0 { world } else { world - e.world_period().min(320.0) }
    } else {
        -1000.0
    }
}

#[no_mangle]
pub extern "C" fn target_y(index: u32) -> f32 {
    engine().nth_alive_target(index as usize).map(|t| t.y).unwrap_or(-1000.0)
}

#[no_mangle]
pub extern "C" fn target_kind(index: u32) -> u32 {
    engine().nth_alive_target(index as usize).map(|t| t.kind as u32).unwrap_or(0)
}

/// Number of active projectiles.
#[no_mangle]
pub extern "C" fn projectile_count() -> u32 {
    engine().projectile_count()
}

#[no_mangle]
pub extern "C" fn projectile_x(index: u32) -> f32 {
    let e = engine();
    if let Some(projectile) = e.nth_alive_projectile(index as usize) {
        let world = e.world_x_wrap(projectile.x - e.scroll_x as f32);
        if world < 320.0 { world } else { world - e.world_period().min(320.0) }
    } else {
        -1000.0
    }
}

#[no_mangle]
pub extern "C" fn projectile_y(index: u32) -> f32 {
    engine().nth_alive_projectile(index as usize).map(|p| p.y).unwrap_or(-1000.0)
}

#[no_mangle]
pub extern "C" fn projectile_kind(index: u32) -> u32 {
    engine().nth_alive_projectile(index as usize).map(|p| p.kind as u32).unwrap_or(0)
}
