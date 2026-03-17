# PROJECT_NAME — Project Rules

> **You don't have memory. These files do.** Everything you learn this session
> is lost when it ends. Write to `HANDOFF.md` (current state), `PITFALLS.md`
> (lessons learned), and `CHANGELOG.md` (history). These files are your memory.
> The question isn't "did I complete the task?" — it's "would the next agent
> thank me for how I left this project?"

Read in order: `HANDOFF.md`, `PITFALLS.md`, this file. For reasoning: `WHY.md`.

---

## What This Is

**One sentence:** DESCRIBE_YOUR_PROJECT_HERE

**"Done" definition:**
```bash
# The one command that proves the project works:
COMMAND_HERE
# Expected outcome: EXPECTED_OUTCOME
```

---

## Critical Rules

1. RULE_1
2. RULE_2

---

## Code Conventions

- Language: LANGUAGE, VERSION
- Build system: BUILD_SYSTEM
- Warnings: `-Wall -Wextra` or equivalent, zero warnings policy
- ADD_MORE_CONVENTIONS

---

## Testing

```bash
git config core.hooksPath .githooks   # once, after clone/copy
cd test && ./run_tests.sh
```

### Performance baselines
```
METRIC_1: VALUE
METRIC_2: VALUE
```

---

## Known Limitations

- LIMITATION_1
