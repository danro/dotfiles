#!/bin/bash
# find all .git directories and exec "git pull" on the parent.
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;