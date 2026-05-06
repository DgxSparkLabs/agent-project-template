# PROJECT_NAME — Project Rules

> **You don't have memory. These files do.** Everything you learn this session
> is lost when it ends. Write to `HANDOFF.md` (current state) and `PITFALLS.md`
> (lessons learned). History lives in `git log`. The question isn't "did I
> complete the task?" — it's "would the next agent thank me for how I left
> this project?"

Read first: `HANDOFF.md`, then `PITFALLS.md`, then this file. Or just run `/start`.

---

## What This Is

**One sentence:** DESCRIBE_YOUR_PROJECT_HERE

**"Done" definition:**
```bash
# The one command that proves the project works:
COMMAND_HERE
# Expected outcome: EXPECTED_OUTCOME
```

**"Done" checklist:**
- [ ] Tests pass? <BEGIN_TESTS_COMMAND>
- [ ] Verified working (not just tests — actually run it)
- [ ] `HANDOFF.md` updated (if behavior or commands changed) — `/handoff` does this
- [ ] `PITFALLS.md` entry added (if a bug was fixed or non-obvious behavior discovered) — `/pitfall` does this
- [ ] `tasks.json` updated (`"passes": true` for completed tasks)
- [ ] Open questions resolved or written to `HANDOFF.md`
- [ ] `docs/` updated (if behavior, setup, or usage changed)
- [ ] `CLAUDE.md` updated (if conventions changed)
- [ ] Changes committed

**Task tracking:** `tasks.json` — structured JSON with pass/fail status. Pick the
first `"passes": false` task, implement it, verify it, flip to `true`, commit.
Do exactly what the task asks. No more. Do not edit descriptions or remove tasks.
Do not work on more than one at a time.

**Open questions:** When you hit something ambiguous — unclear requirements, multiple
valid approaches, missing context — ask the user with your suggested solution. Don't
assume silently. If the session ends with unresolved questions, add them to "Open
questions" in `HANDOFF.md` so the next session can address them.

---

## When stuck

Separate what you know from what you assume. If the assumption list is non-empty,
investigate before acting. Fix bottom-up — if you can't explain *why* something
failed, you haven't found the cause yet. After 3 failed attempts at the same
approach, try a different angle. Record what you tried in `PITFALLS.md`.

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

Path-scoped rules live in `.claude/rules/` (e.g., `code-style.md`, `testing.md`).
Add new ones there with a `paths:` glob in the frontmatter so they only load
when relevant files are open.

---

## Testing

```bash
bash init.sh                          # bootstrap environment + install hooks
cd test && ./run_tests.sh             # run test suite
```

### Performance baselines
```
METRIC_1: VALUE
METRIC_2: VALUE
```

---

## Documentation for Humans

Humans will read this project and try to understand it. Document in `docs/`. The
audience is someone who has never seen this project. Explain what things do and
why, not just how to run them. Before each command, explain what it does. Before
each expected output, explain what the values mean. If you'd need to ask "what
does this do?" reading it, the doc is incomplete.

Every command in a tutorial must have been executed and verified. Expected output
must be copy-pasted from actual runs, not guessed.

---

## Claude Code Workflow

This template ships Claude-Code-native primitives that encode the methodology.

**Skills** (`.claude/skills/<name>/SKILL.md`):
- `/start` — read `HANDOFF.md`, `PITFALLS.md`, `CLAUDE.md`, `tasks.json`; run `init.sh` and tests; report state and the next task.
- `/handoff <what changed>` — update `HANDOFF.md` in-place (never appends).
- `/pitfall <description>` — append a 4-line entry to `PITFALLS.md`.

**Subagent** (`.claude/agents/code-reviewer.md`): `code-reviewer` does a read-only review of uncommitted changes against this file and `PITFALLS.md`. Use it after substantial edits.

**Output style** (`.claude/output-styles/methodology.md`): select `Methodology` via `/output-style` to keep these principles in the system prompt every turn.

**Settings**: `.claude/settings.json` is committed (team-wide permissions, hooks). `.claude/settings.local.json` is gitignored (personal overrides). The `SessionStart` hook in `settings.json` prints the reading order at the top of every session.

**Regeneration**: if the project is heavily restructured, run `/init` to have Claude propose a fresh `CLAUDE.md` based on the new state.

Reference: https://code.claude.com/docs/en/memory
