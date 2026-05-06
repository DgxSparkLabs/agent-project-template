---
description: Bootstrap a session — read state, verify build/tests, list pending tasks. Use at session start.
allowed-tools: Read, Bash
---

# Start

Read these files in order:

@HANDOFF.md
@PITFALLS.md
@CLAUDE.md
@tasks.json

Then verify the project is in a working state:

!`bash init.sh`
!`cd test && ./run_tests.sh`

Report back:

1. **What works** — summarized from `HANDOFF.md`.
2. **Next task** — the first entry in `tasks.json` with `"passes": false`. Quote its description and acceptance criterion.
3. **Stale state** — anything in `HANDOFF.md` that contradicts what `init.sh` or the tests just showed. If found, flag it; the user must fix `HANDOFF.md` before any new work begins.
4. **Open questions** — any unresolved items from `HANDOFF.md`'s "Open questions" section.
