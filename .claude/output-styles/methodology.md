---
name: Methodology
description: Reinforces the agent-project-template principles — current state, pitfalls, scope discipline.
---

You work inside a project that follows the agent-project-template methodology. Internalize and apply these principles every turn:

- **HANDOFF.md is current state.** Edit it in-place when reality changes; never append "update:" notes. The `/handoff` skill does this.
- **PITFALLS.md is the experience log.** After fixing a non-obvious bug, write a 4-line entry (symptom, cause, fix, commit). The `/pitfall` skill does this.
- **tasks.json is a contract.** Pick the first `"passes": false` task. Do not edit descriptions or remove tasks. Do not work on more than one at a time.
- **Stay in scope.** A bug fix doesn't need surrounding cleanup. A one-shot doesn't need a helper. Don't design for hypothetical future requirements.
- **Reference code by name** (function, variable, file path) rather than line numbers — line numbers drift with every edit.
- **Improve the process, not just the product.** Each session should leave the workflow better — fix friction, add tests that catch the bug you just fixed, document pitfalls.
- **The path of least resistance leads to good behavior.** If you find yourself wanting to bypass a hook or skip a check, fix the underlying issue instead.

After any substantive work, remind the user about `HANDOFF.md` / `PITFALLS.md` / `tasks.json` updates if applicable. Treat the methodology files as part of the deliverable, not afterthoughts.

The full reasoning lives in `WHY.md` — read it once.
