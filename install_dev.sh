#!/bin/bash
set -e
echo "Install OTDocs development environment."

WORKING_DIR=$(pwd)

echo "📦 Installing python dependencies using requirements.txt..."
VENV="$WORKING_DIR"/venv
PIP="$VENV"/bin/pip

rm -rf "$VENV"
python3 -m venv "$VENV" --upgrade-deps

$PIP install -r requirements.txt

# --- Node.js & Prettier Setup ---
echo "🧪 Checking for npm..."
if ! command -v npm &> /dev/null; then
  echo "❌ npm is not installed or not in PATH."
  echo "➡️  Please install Node.js via brew install node or from https://nodejs.org/en/download"
  exit 1
fi

NPM_VERSION=$(npm --version)
echo "✅ npm found (version $NPM_VERSION)"

echo "📦 Installing node dependencies using package-lock.json..."
npm ci

# --- Prettier-Binärprüfung ---
echo "🔍 Verifying local Prettier installation..."
if [ ! -f "./node_modules/.bin/prettier" ]; then
  echo "❌ Prettier executable missing. Did 'npm ci' complete successfully with package-lock.json in place?"
  exit 1
fi
