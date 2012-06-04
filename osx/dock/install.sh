#!/bin/sh
defaults write com.apple.dock no-glass -boolean YES
DOCK_RSRC=/System/Library/CoreServices/Dock.app/Contents/Resources/
sudo mkdir -vp $DOCK_RSRC"bottom-orig/"
sudo cp bottom*.png $DOCK_RSRC"bottom-orig/"
sudo cp *.png $DOCK_RSRC
killall Dock