---
description: Append a structured 4-line entry to PITFALLS.md. Use right after fixing a non-obvious bug.
allowed-tools: Read, Edit, Bash
argument-hint: [short description of the pitfall]
---

# Pitfall

Append an entry to `PITFALLS.md` in this exact format. Four lines under the heading — no more.

```
### $ARGUMENTS
- Symptom: <what was observed — error message, hang, wrong output>
- Cause: <root cause, not surface>
- Fix: <specific resolution, not "fixed the bug">
- Commit: <hash from `git log -1 --format=%h`>
```

Get the latest commit hash with:

!`git log -1 --format=%h`

Append below the existing entries. Do not edit prior entries — `PITFALLS.md` is an append-only log.

If $ARGUMENTS is empty, ask the user for a short description before writing.
