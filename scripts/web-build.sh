#!/bin/sh
/usr/bin/osascript -e '
tell application "Google Chrome"
    activate
    tell application "System Events" to keystroke "r" using command down
end tell
'
