#!/bin/bash
set -e
echo "Install OTDocs development environment."

WORKING_DIR=$(pwd)
VENV="$WORKING_DIR"/venv
PIP="$VENV"/bin/pip

rm -rf "$VENV"
python3 -m venv "$VENV" --upgrade-deps

$PIP install -r requirements.txt
