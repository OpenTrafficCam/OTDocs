#!/bin/bash
set -e
echo "Start local OTDocs development server."

WORKING_DIR=$(pwd)
VENV="$WORKING_DIR"/venv
PIP="$VENV"/bin/pip
PYTHON="$VENV"/bin/python

python3 -m venv "$VENV" --upgrade-deps

$PIP install -r requirements.txt --upgrade

$PYTHON -m mkdocs serve
