#!/bin/bash

# Define the parent directory
PARENT_DIR=$1

# Loop through each subdirectory in the parent directory
for SUBDIR in "../$PARENT_DIR"/*/; do
  if [ -d "$SUBDIR" ]; then
    echo "Entering directory: $SUBDIR"
    cd "$SUBDIR" || continue
    # Run the command in the subdirectory
    git checkout master
    echo "Command executed in: $SUBDIR"
    cd - > /dev/null
  fi
done
