#!/usr/bin/env bash

source ./default.sh

open /System/Library/PreferencePanes/Accounts.prefPane/
hitEnter

open "/System/Library/PreferencePanes/Displays.prefPane/"
echo "- scaled: more space"
hitEnter

open "/System/Library/PreferencePanes/Sound.prefPane/"
echo "- disable user interface sounds"
echo "- set alert volume to minimum"
echo "- enable show volume in menubar"
hitEnter

open "/System/Library/PreferencePanes/Dock.prefPane/"
echo "- resize"
echo "- to right"
echo "- autohide"
hitEnter

open "/System/Library/PreferencePanes/Expose.prefPane/"
echo "- Disable automatic rearrange"
echo "- Uncheck displays have separate spaces"
echo "- hot corners: "
echo "  - top left mission control"
echo "  - bottom left start screen saver"
echo "  - bottom right show desktop"
echo "- create three desktops from mission control"
hitEnter

open "/System/Library/PreferencePanes/Keyboard.prefPane"
echo "Keyboard -> move focus to next window - cmd+§"
echo "Keyboard access: all controls"
hitEnter

open "/System/Library/PreferencePanes/Accessibility.prefPane"
echo "Zoom -> Use scroll gesture with modifier keys"
hitEnter

open /Applications/Messages.app
hitEnter

open /Applications/Maps.app
hitEnter

open /Applications/Calendar.app
hitEnter

open /System/Library/PreferencePanes/Accounts.prefPane/
hitEnter

open /Applications/Notes.app
hitEnter

open /Applications/Photos.app
hitEnter

open /System/Library/PreferencePanes/Notifications.prefPane/
echo "disable all"
hitEnter

open "/System/Library/PreferencePanes/Security.prefPane/"
echo "- Require password: 5 seconds"
echo "- Advanced -> require an administrator password"
echo "- Enable filevault, this will restart"
hitEnter
