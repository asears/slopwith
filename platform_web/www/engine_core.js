/**
 * engine_core.js — minimal WASM loader shim
 *
 * Compatible with the import in main.js:
 *   const mod = await import('./engine_core.js');
 *   await mod.default();   // initialise
 *
 * All exported functions are forwarded so callers can use:
 *   mod.init(), mod.tick(), mod.plane_x(), etc.
 */

let wasm;

/** Fetch, compile and instantiate engine_core.wasm. */
export default async function init() {
  const response = await fetch('engine_core.wasm');
  const result   = await WebAssembly.instantiateStreaming(response, {});
  wasm           = result.instance.exports;

  // Expose every WASM export as a named export on this module.
  Object.assign(glueExports, wasm);
}

// Proxy object that main.js receives when it does:
//   const mod = await import('./engine_core.js')
export const glueExports = {};

// Forward individual exports
export const init_engine    = (...a) => wasm.init(...a);
export const alloc_buf      = (...a) => wasm.alloc_buf(...a);
export const commit_pack    = (...a) => wasm.commit_pack(...a);
export const register_table = (...a) => wasm.register_table(...a);
export const tick           = (...a) => wasm.tick(...a);
export const plane_x        = ()     => wasm.plane_x();
export const plane_y        = ()     => wasm.plane_y();
export const plane_angle    = ()     => wasm.plane_angle();
export const scroll_x       = ()     => wasm.scroll_x();
export const frame_count    = ()     => wasm.frame_count();
export const terrain_y_at   = (...a) => wasm.terrain_y_at(...a);
export const trig_y_at      = (...a) => wasm.trig_y_at(...a);

// Expose raw WASM memory so JS can write byte slices before calling commit_pack
export const get_memory = () => wasm.memory;

// Allow main.js to call `wasm.init()` matching the wasm-bindgen pattern
export { init_engine as init };
