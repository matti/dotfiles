#!/usr/bin/env bash

source ./default.sh

header "Displays"
open "/System/Library/PreferencePanes/Displays.prefPane/"
echo "Retina?"
item "scaled: more space"
hitEnter

header "Desktop & Screen Saver"
open /System/Library/PreferencePanes/DesktopScreenEffectsPref.prefPane
item "check Show with clock"
hitEnter

header "Dock"
open "/System/Library/PreferencePanes/Dock.prefPane/"
echo "TODO: dock.rb?"
item "resize + magnify"
hitEnter

header "Mission Control"
open "/System/Library/PreferencePanes/Expose.prefPane/"

item "uncheck Automatically rearrange Spaces based on most recent use"
item "uncheck Displays have separate Spaces"

button "Hot Corners"
item "top left Desktop"
item "bottom left Start Screen Saver"

echo "Other:"
item "create three desktops from mission control"
hitEnter


header "Security & Privacy"
open "/System/Library/PreferencePanes/Security.prefPane/"

item "Require password: 5 seconds"
button "Advanced"
item "Require an administrator password for system wide preferences"

tab "Filevault"
item "Enable filevault"

tab "Firewall"
item "?"

hitEnter

header "Spotlight"
open /System/Library/PreferencePanes/Spotlight.prefPane
tab "Privacy"
item "?"
hitEnter

header "Energy Saver"
open /System/Library/PreferencePanes/EnergySaver.prefPane
item "?"
hitEnter

header "Keyboard"
open "/System/Library/PreferencePanes/Keyboard.prefPane"
tab "Text"
item "uncheck Correct"
item "uncheck Capitalize"
item "uncheck Add period with double space"
item "uncheck smart quotes"
tab "Shortcuts"
item "Keyboard / Move focus to next window - cmd+§"
item "Full Keyboard Access: all controls"
hitEnter

header "Mouse"
open "/System/Library/PreferencePanes/Mouse.prefPane"
hitEnter

header "Trackpad"
open "/System/Library/PreferencePanes/Trackpad.prefPane"
hitEnter

header "Printers & Scanners"
open "/System/Library/PreferencePanes/PrintAndScan.prefPane"
hitEnter

header "Sound"
open "/System/Library/PreferencePanes/Sound.prefPane"
item "set alert volume to minimum"
item "uncheck Play user interface sound effects"
item "uncheck Play feedback"
item "check Show volume in menubar"
hitEnter

header "Network"
open "/System/Library/PreferencePanes/Network.prefPane"
item "Connect iPhone with cable and set order & enable"
hitEnter

header "Bluetooth"
open "/System/Library/PreferencePanes/Bluetooth.prefPane"
item "check Show Bluetooth in menu bar"
hitEnter

header "Sharing"
open "/System/Library/PreferencePanes/SharingPref.prefPane"
item "?"
hitEnter

# header "Accounts"
# open /System/Library/PreferencePanes/Accounts.prefPane/
# hitEnter

header "Messages"
open /Applications/Messages.app
hitEnter

header "Maps"
open /Applications/Maps.app
hitEnter

header "Calendar"
open /Applications/Calendar.app
hitEnter

header "Notes"
open /Applications/Notes.app
hitEnter

header "Photos"
open /Applications/Photos.app
hitEnter
