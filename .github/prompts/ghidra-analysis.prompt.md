---
name: ghidra-analysis-prompt
description: Prompt template to drive a focused Ghidra analysis session for Sopwith.exe subsystems.
---

# Prompt Template: Ghidra Analysis

Analyze `Sopwith.exe` in Ghidra and focus only on this subsystem: **{{SUBSYSTEM}}**.

Requirements:
1. Identify candidate functions and provide renamed symbols.
2. Describe key globals/structures used by these functions.
3. Infer update order and side effects.
4. List uncertain branches with confidence level.
5. Produce outputs:
   - `docs/reverse/{{SUBSYSTEM}}-functions.md`
   - `docs/reverse/{{SUBSYSTEM}}-state.md`
   - `docs/reverse/{{SUBSYSTEM}}-open-questions.md`

Constraints:
- Prefer evidence-based conclusions.
- Flag assumptions explicitly.
- Keep notes concise and implementation-ready.
