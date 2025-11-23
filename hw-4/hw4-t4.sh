#!/bin/bash

# Argument check
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 \"string\" start end"
    exit 1
fi

input="$1"
start="$2"
end="$3"

# Check that start <= end
if (( start > end )); then
    echo "Error: start must be ≤ end"
    exit 1
fi

# Substring extraction
substring=$(echo -n "$input" | cut -c${start}-${end})

echo "$substring"

