# HANDOFF.md — Current state of the project

> **New here?** Read in order: this file, then `PITFALLS.md`, then `AGENTS.md`. For the reasoning: `WHY.md`.

Last updated: DATE. If anything here contradicts reality, fix this file.

---

## What is this?

DESCRIBE_PROJECT_IN_2_SENTENCES

## Before you write any code

```bash
# Pre-flight checks:
# 1. Check environment
# 2. Build
# 3. Run tests
```

---

## What works (verified DATE)

- FEATURE_1
- FEATURE_2

---

## Build & deploy

```bash
BUILD_COMMANDS
```

---

## Known limitations

- LIMITATION_1

## Future work

1. NEXT_ITEM

---

## How to resume this project

Copy this prompt to start a new agent session:

```
Read HANDOFF.md and PITFALLS.md. Run the tests. For each future work
item (in priority order):
1. Investigate — read the relevant code, understand why it's a problem
2. Plan — break into tasks with function names, pass conditions, and
   dependency order. Write them to the todo list.
3. Implement — one task at a time. Test after each. Commit after each.
4. Update HANDOFF.md. Add PITFALLS.md entries for any bugs found.

If you discover improvements not on the list, apply the same 4 steps.
If you hit friction, fix the process not just the symptom.
Keep going until the todo list is empty.
```
