#!/bin/bash
saved_dir=$(PWD)
cd /tmp
echo Downloading Virtual Box...
curl -O https://download.virtualbox.org/virtualbox/6.1.34/VirtualBox-6.1.34-150636-OSX.dmg
echo Installing Virtual Box...
hdiutil attach VirtualBox-6.1.34-150636-OSX.dmg
sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /Volumes/Macintosh\ HD
rm VirtualBox-6.1.34-150636-OSX.dmg
echo VirtualBox Installed.
cd ${saved_dir}