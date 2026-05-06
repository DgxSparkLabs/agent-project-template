# HANDOFF.md — Current state of the project

> **New here?** Read this file, then `PITFALLS.md`, then `CLAUDE.md`. Or run `/start`.

Last updated: DATE. If anything here contradicts reality, fix this file.

---

## Before you write any code

```bash
bash init.sh              # bootstrap environment, build, verify
cd test && ./run_tests.sh # confirm everything is green
git log --oneline -10     # understand recent changes
cat tasks.json | head -40 # see what's next
```

If init.sh or tests fail, fix the failure before doing anything else.

---

## What works (verified DATE)

- FEATURE_1
- FEATURE_2

---

## Known limitations

- LIMITATION_1

---

## Open questions

<!-- When you hit ambiguity, ask the user. If unresolved by session end, add here.
     Format: question + your suggested solution. Remove when resolved. -->

---

## How to resume this project

Copy this prompt to start a new agent session:

```
Read HANDOFF.md, PITFALLS.md, and CLAUDE.md (or run /start).
Run the "Before you write any code" steps. Fix any failures first.
Then pick the next task from tasks.json and follow the task tracking
rules in CLAUDE.md.
```
