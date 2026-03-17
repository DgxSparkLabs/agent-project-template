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
├── CHANGELOG.md        # History (append-only, one paragraph per milestone)
├── .githooks/
│   └── pre-commit      # Zero-warning build gate
└── test/
    ├── run_tests.sh    # Automated test runner (PASS/FAIL/SKIP)
    └── baselines.json  # Performance thresholds
```

## Methodology

See `~/.config/cognition/AGENTS.md` for the full methodology:
- Document lifecycle (3 tiers)
- Verification ladder (5 layers)
- Task formation rules
- Commit loop
