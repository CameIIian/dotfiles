#!/usr/bin/env bash
set -e

EXT_FILE="extensions.txt"

if ! command -v code >/dev/null 2>&1; then
    echo "Error: 'code' command not found."
    exit 1
fi

if [ ! -f "$EXT_FILE" ]; then
    echo "Error: $EXT_FILE not found."
    exit 1
fi

while IFS= read -r extension || [ -n "$extension" ]; do
    if [[ -z "$extension" || "$extension" =~ ^# ]]; then
        continue
    fi

    extension_id="${extension%@*}"

    echo "Installing: $extension_id"
    code --install-extension "$extension_id" --force
done < "$EXT_FILE"
