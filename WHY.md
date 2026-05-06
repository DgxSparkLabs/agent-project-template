# Why We Work This Way

This file explains the reasoning behind the project structure. Not rules to follow -- understanding to apply. Read it once. The principles will make sense when you hit the situations they describe.

---

## Two documents, not ten (and why there are four)

Every project has two core documents: `CLAUDE.md` (rules) and `HANDOFF.md` (current state). These are the working documents -- updated every session, read every session.

Two more exist but serve different roles. `PITFALLS.md` is a structured append-only log (symptom/cause/fix/commit) that captures debugging experience -- it grows with the project but doesn't overlap with the core docs. `WHY.md` is a read-once philosophy document that never needs updating. Neither is a "third tier" of documentation. They're tools with specific jobs that don't fit the two-tier model and shouldn't be forced into it.

History lives in `git log`. We used to have a `CHANGELOG.md` but it duplicated what git already records. The useful bits (milestones, major changes) belong in commit messages, not a separate file that drifts out of sync.

We learned the "no more documents" rule the hard way. A project accumulated `START_HERE.md`, `ROADMAP.md`, `PROGRESS.md` (86K lines), `.tasks/remaining.md`, `.tasks/scope.md`, and 7 individual task files. `START_HERE.md` existed solely to warn you which other documents were stale. When you need a document to explain which documents to trust, you have too many documents.

The test is simple: does this document have a clear owner, a clear update trigger, and a job that the core docs can't do? If yes, it earns its place. If no, put the content in one of them.

## HANDOFF.md is edited, not appended

`HANDOFF.md` always reflects the current state. When something changes, you update it in-place. You don't add a note at the bottom saying "update: this section is now wrong."

We had a progress file that grew to 86K lines because it was append-only. Nobody read it. The useful information was copied into other files. The original became dead weight. History belongs in `git log`. Current state belongs in `HANDOFF.md`. Don't mix them.

## Tests before features

The test runner, the pre-commit hook, and the baselines file exist in this template before any feature code. That's deliberate.

Every project that adds testing after the features are built has the same experience: the test infrastructure never catches up. You're always testing yesterday's code. But if the test runner exists from day one, every feature gets a test because the infrastructure is already there and running it is one command.

## The hooks are nudges, not walls

Two hooks, two jobs. The pre-commit hook blocks on build failures and warnings, and nudges about stale test results (warns but doesn't block). The pre-push hook runs the test suite and blocks if anything fails.

This split is deliberate. A commit with stale tests is recoverable -- you'll catch it before push. But pushing broken tests to a shared branch wastes everyone's time.

We could make it stricter. But strict hooks get bypassed (`--no-verify`). A nudge that's occasionally annoying is better than a wall that gets circumvented.

## PITFALLS.md captures experience

When you fix a bug or discover non-obvious behavior, you write a 4-line entry in `PITFALLS.md`: symptom, cause, fix, commit. The file grows naturally from the work.

This exists because agents don't persist memory between sessions. An agent that spent 4 hours debugging an init recursion deadlock will lose that knowledge when the session ends. The next agent will hit the same deadlock and spend the same 4 hours. Unless the first agent wrote it down. The pitfall entry takes 30 seconds to write and saves hours for every future session.

## JSON task tracking, not Markdown

`tasks.json` uses structured JSON with a boolean `passes` field instead of Markdown bullets for task tracking. This came from Anthropic's long-running agent research: agents are less likely to corrupt JSON data than Markdown prose. A Markdown "Future work" list invites rewording, reordering, and deletion. A JSON array with `"passes": false` is treated as data — agents flip the boolean but leave the structure intact.

The rule "do not edit descriptions or remove tasks" exists because the task list is a contract. If an agent can redefine what "done" means by editing a task description, the tracking loses its purpose.

## init.sh is a script, not prose

Build and environment setup commands used to live in HANDOFF.md as code blocks. An agent had to read the prose, extract the commands, and run them manually. `init.sh` is one command: `bash init.sh`. It eliminates the "agent spends time figuring out how to run the project" failure mode.

The script also encodes a startup verification step. The last thing init.sh does is confirm the project is in a working state. If the previous agent left broken code, you find out immediately — before making it worse by starting new work.

## Pass conditions before implementation

Every task has a concrete pass condition written before work starts. Not "make it work" but "bench.cu D2H throughput > 3 GB/s" or "test_memory subtest 12 completes without blocking."

This exists because without a pass condition, "done" is subjective. An agent can convince itself something works by running it once and eyeballing the output. A pass condition is a contract you can't negotiate with.

## Reference code by name, not line number

"After the declaration of `g_handle_map`" not "after line ~2113." Line numbers drift with every edit. An agent following a stale line number will insert code in the wrong place. Function names and variable names survive edits and are greppable.

## The completeness checker is a mirror, not a motivator

The `/motivation` skill doesn't give pep talks. It checks git status, HANDOFF.md freshness, test results, and build state, then reports what's objectively incomplete. An agent doesn't need encouragement to keep working. It needs to know what's not done yet.

## Improve the process, not just the product

When you fix a bug, also add the test that would have caught it. When you hit friction, also fix the tool or script that caused it. When you discover something, also write it in PITFALLS.md. The task is never just the task. Each session should leave the workflow better than it found it.

This is how the project gets faster over time. Not because the code is better, but because the process for making the code better is better.

---

These aren't abstract principles. They're lessons from real projects where the opposite was tried and failed. Follow them not because a document says to, but because the alternative is repeating mistakes that have already been made.