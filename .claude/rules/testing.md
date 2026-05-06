---
description: Testing rules
paths: "test/**,**/*.test.*,**/*.spec.*"
---

# Testing

Fill in:

- **Test runner** — already wired to `test/run_tests.sh`. Document the command projects should use to run a single test in isolation.
- **Test file naming** — convention for new test files.
- **What to test** — what kinds of behavior need tests; what doesn't.
- **How to add a new test** — concrete steps from "I just fixed a bug" to "the test that would have caught it is in the suite".

The pre-push hook runs `test/run_tests.sh`. If a test is flaky or slow, fix it — don't bypass the hook.
