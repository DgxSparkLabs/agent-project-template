---
description: Update HANDOFF.md to reflect current reality. Edit in-place — never append.
allowed-tools: Read, Edit, Bash
argument-hint: [what changed in this session]
---

# Handoff

Read `HANDOFF.md` and update it **in-place**. Do not append "update:" notes — edit the relevant section directly so the file always describes the current state.

Sections to refresh:

- `Last updated:` — set to today's date (use `!\`date +%Y-%m-%d\``)
- `What works` — add new working features, remove anything no longer true
- `Known limitations` — add or remove items as reality changed
- `Open questions` — add anything unresolved from this session; remove items now resolved

Context provided for this update: $ARGUMENTS

If $ARGUMENTS is empty, ask the user what changed before editing.
