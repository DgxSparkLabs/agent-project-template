# Agent Project Template

Skeleton for new projects. Copy this directory and fill in the placeholders.

## Setup

```bash
cp -r ~/source/agent-project-template/ ~/source/my-new-project/
cd ~/source/my-new-project
git init
git config core.hooksPath .githooks
# Edit AGENTS.md with project-specific rules
# Edit HANDOFF.md with project description and "done" definition
```

## Structure

```
├── AGENTS.md           # Project rules and conventions (max 200 lines)
├── HANDOFF.md          # Current state (updated in-place every commit)
├── WHY.md              # Philosophy — why we work this way (read once)
├── PITFALLS.md         # Lessons learned — symptom, cause, fix (grows with the project)
├── tasks.json          # Task queue — structured JSON with pass/fail status
├── init.sh             # Environment bootstrap — build, run, verify (one command)
├── docs/
│   └── TEMPLATE.md     # Structure for human-facing documentation
├── .githooks/
│   ├── pre-commit      # Zero-warning build gate + test freshness nudge
│   └── pre-push        # Test suite must pass before push
└── test/
    ├── run_tests.sh    # Automated test runner (PASS/FAIL/SKIP)
    └── baselines.json  # Performance thresholds
```

## Reading order for new agents

1. **HANDOFF.md** — what works, what to verify, how to resume
2. **PITFALLS.md** — what not to do and why
3. **AGENTS.md** — project-specific conventions
4. **tasks.json** — the task queue (pick first `"passes": false`)
5. **WHY.md** — the reasoning behind the structure (read once, understand the principles)

## Methodology

The structure in this template encodes the methodology. The files are already here — you fill them in. The hooks are already wired — they just run. The test runner is ready — you add tests. The path of least resistance leads to good behavior.

For the full methodology: `~/.config/devin/AGENTS.md`
For the reasoning: `WHY.md`
