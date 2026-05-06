# Agent Project Template

Skeleton for new projects in Claude Code. Copy this directory and fill in the placeholders.

## Setup

```bash
cp -r ~/source/agent-project-template/ ~/source/my-new-project/
cd ~/source/my-new-project
git init
git config core.hooksPath .githooks
# Edit CLAUDE.md with project-specific rules
# Edit HANDOFF.md with project description and "done" definition
# Open in Claude Code and run /start (or /init to regenerate CLAUDE.md from scratch)
```

## Structure

```
├── CLAUDE.md           # Project rules and conventions (max 200 lines)
├── HANDOFF.md          # Current state (updated in-place every commit)
├── WHY.md              # Philosophy — why we work this way (read once)
├── PITFALLS.md         # Lessons learned — symptom, cause, fix (grows with the project)
├── tasks.json          # Task queue — structured JSON with pass/fail status
├── init.sh             # Environment bootstrap — build, run, verify (one command)
├── docs/
│   └── TEMPLATE.md     # Structure for human-facing documentation
├── .claude/
│   ├── settings.json           # Permissions + SessionStart reading-order hook (committed)
│   ├── settings.local.json     # Personal overrides (gitignored — create as needed)
│   ├── skills/
│   │   ├── start/SKILL.md      # /start — bootstrap a session
│   │   ├── handoff/SKILL.md    # /handoff — update HANDOFF.md in-place
│   │   └── pitfall/SKILL.md    # /pitfall — append a PITFALLS.md entry
│   ├── agents/
│   │   └── code-reviewer.md    # Read-only review of uncommitted changes
│   ├── output-styles/
│   │   └── methodology.md      # Reinforces template principles every turn
│   └── rules/
│       ├── code-style.md       # Path-scoped code style (placeholder)
│       └── testing.md          # Path-scoped testing rules (placeholder)
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
3. **CLAUDE.md** — project-specific conventions
4. **tasks.json** — the task queue (pick first `"passes": false`)
5. **WHY.md** — the reasoning behind the structure (read once, understand the principles)

In Claude Code, the `/start` skill executes this reading order plus `init.sh` and the test suite, then reports state.

## Claude Code workflow

The template ships native Claude Code primitives that encode the methodology:

- **Skills** (`.claude/skills/`) — `/start`, `/handoff`, `/pitfall`
- **Subagent** (`.claude/agents/code-reviewer.md`) — review uncommitted changes
- **Output style** (`.claude/output-styles/methodology.md`) — selectable via `/output-style`
- **Settings + hooks** (`.claude/settings.json`) — permissions, SessionStart reading-order reminder
- **Rules** (`.claude/rules/*.md`) — path-scoped guidance loaded only when relevant files are open

## Methodology

The structure encodes the methodology. The files are already here — you fill them in. The hooks are already wired — they just run. The test runner is ready — you add tests. The path of least resistance leads to good behavior.

For the full methodology: `~/.claude/CLAUDE.md`
For the reasoning behind this template: `WHY.md`
