#!/bin/bash

# Check arguments
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <file-path> <text>"
  exit 1
fi

file="$1"
text="$2"

# Create parent directory if needed
dir=$(dirname -- "$file")
if ! mkdir -p -- "$dir"; then
  echo "Cannot create directory '$dir'"
  exit 1
fi

# Write text to file overwriting if it exists. Fail if write fails.
if ! printf '%s' "$text" > "$file"; then
  echo "Cannot create file '$file'"
  exit 1
fi

exit 0