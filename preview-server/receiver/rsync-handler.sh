#!/bin/sh
set -e

# This script is invoked by ForceCommand / authorized_keys restrict,command=
# It validates SSH_ORIGINAL_COMMAND and only allows:
#   1. rsync --server commands targeting /data/pr-<number>/
#   2. cleanup pr-<number> to remove a preview directory

case "$SSH_ORIGINAL_COMMAND" in
    rsync\ --server*)
        # Reject path traversal attempts
        if echo "$SSH_ORIGINAL_COMMAND" | grep -q '\.\.'; then
            echo "ERROR: Path traversal not allowed" >&2
            exit 1
        fi
        # Validate: command must end with /data/pr-<number>/ or /data/pr-<number>
        if echo "$SSH_ORIGINAL_COMMAND" | grep -qE ' /data/pr-[0-9]+/?$'; then
            # shellcheck disable=SC2086
            # Word splitting is intentional: rsync --server expects separate arguments
            exec $SSH_ORIGINAL_COMMAND
        else
            echo "ERROR: Invalid rsync target path" >&2
            exit 1
        fi
        ;;
    cleanup\ pr-[0-9]*)
        # Extract and strictly validate the PR directory name
        PR_DIR=$(echo "$SSH_ORIGINAL_COMMAND" | sed -n 's/^cleanup \(pr-[0-9]\{1,\}\)$/\1/p')
        if [ -z "$PR_DIR" ]; then
            echo "ERROR: Invalid cleanup command format" >&2
            exit 1
        fi
        if [ -d "/data/$PR_DIR" ]; then
            rm -rf "/data/$PR_DIR"
            echo "Cleaned up /data/$PR_DIR"
        else
            echo "Directory /data/$PR_DIR not found"
        fi
        ;;
    *)
        echo "ERROR: Command not allowed" >&2
        exit 1
        ;;
esac
