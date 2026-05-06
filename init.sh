#!/bin/bash
# init.sh — Bootstrap the development environment.
# Run this at the start of every session before writing any code.
# Hooks are installed automatically (git config core.hooksPath .githooks).

set -euo pipefail

# ---------- Environment ----------
git config core.hooksPath .githooks
# Add environment checks here (language version, tools, etc.)
# Example:
# command -v node >/dev/null || { echo "ERROR: node not found"; exit 1; }

# ---------- Build ----------
# BUILD_COMMAND_HERE
# Example:
# npm install && npm run build

# ---------- Run ----------
# Start development server or equivalent.
# Example:
# npm run dev &
# sleep 2

# ---------- Verify ----------
# Quick smoke test that the project is in a working state.
# Example:
# curl -s http://localhost:3000/health | grep -q "ok"
# cd test && ./run_tests.sh

echo "init.sh: environment ready."
echo "Tip: in Claude Code, run /start to read state and verify the project."
