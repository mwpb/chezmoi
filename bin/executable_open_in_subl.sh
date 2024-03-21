#!/usr/bin/env bash
set -Eeou pipefail
FILE_TO_OPEN=$(xclip -o)
if [[ -f "$FILE_TO_OPEN" ]]; then
    ABS_PATH=$(realpath "$FILE_TO_OPEN")
    subl $FILE_TO_OPEN
elif [[ -f "./$FILE_TO_OPEN" ]]; then
    ABS_PATH=$(realpath "./$FILE_TO_OPEN")
    subl $FILE_TO_OPEN
else
    echo "Path is not a file."
    exit 1
fi
