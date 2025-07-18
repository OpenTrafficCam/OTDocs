#!/bin/bash
set -e

echo "📦 Updating Prettier to latest version (to match Github Super-Linter)..."

# Check for npm
if ! command -v npm &> /dev/null; then
  echo "❌ npm is not installed. Install Node.js from https://nodejs.org/en/download/"
  exit 1
fi

# Install latest Prettier and update package-lock.json
npm install prettier@latest --save-dev

# Show installed version
PRETTIER_VERSION=$(npx prettier --version)
echo "✅ Prettier updated to version $PRETTIER_VERSION"

# Git reminder
echo "📝 Please commit the updated package.json and package-lock.json"
