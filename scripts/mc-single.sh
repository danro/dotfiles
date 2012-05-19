#!/bin/sh
echo "Backing up..."
cd ~/.minecraft
git add .
git ci "backup"
echo "Launching..."
open /Applications/Minecraft.app
