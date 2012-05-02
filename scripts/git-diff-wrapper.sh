#!/bin/sh
# uses FileMerge which is included in Xcode dev tools.
/usr/bin/opendiff "$2" "$5" -merge "$1"