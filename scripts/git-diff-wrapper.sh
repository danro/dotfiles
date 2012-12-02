#!/bin/sh
# uses FileMerge which is included in Xcode dev tools.
# xcrun -r opendiff "$2" "$5" -merge "$1"
# /usr/local/bin/ksdiff "$2" "$5"

# Kaleidoscope config
/usr/local/bin/ksdiff --partial-changeset --relative-path "$1" -- "$2" "$5"