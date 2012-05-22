#!/bin/sh
defaults write com.apple.dock no-glass -boolean YES
sudo cp *.png /System/Library/CoreServices/Dock.app/Contents/Resources/
killall Dock