#!/usr/bin/env bash

source ./default.sh

#TODO: keep on top
open "/System/Library/PreferencePanes/Security.prefPane/"
echo "- Require password: 5 seconds"
echo "- Advanced -> require an administrator password"
echo "- Enable filevault, this will restart"
hitEnter

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

open "/Applications/Alfred 3.app"
echo "Alfred 3"
echo "- register"
echo "- clipboard viewer hotkey, persist"
hitEnter

open "/Applications/Skype.app"
hitEnter

hitEnter
open "/Applications/Telegram.app"
echo "- General"
echo "  - Advanced"
echo "    - Auto download"
echo "    - [ ] sound effects"
echo "- Notifications"
echo "  - Off"
echo "- Privacy"
echo "  - Passcode"
echo "  - autolock 5min"
hitEnter

## checkpoint


open "/Applications/Docker.app"
echo "- TODO"

open "https://facebook.com"
hitEnter



open "$HOME/Applications/Google Chrome.app"
echo "chrome://flags/ -- Enable the new avatar menu"

echo "For every profile:"
echo "click to play"

hitEnter

open "$HOME/Applications/Flowdock.app"
hitEnter

open "$HOME/Applications/Skype.app"
hitEnter

open "$HOME/Applications/SourceTree.app"
hitEnter

open "/System/Library/PreferencePanes/Keyboard.prefPane"
echo "Keyboard -> move focus to next window - cmd+§"
echo "Keyboard access: all controls"
hitEnter

open "/System/Library/PreferencePanes/Accessibility.prefPane"
echo "Zoom -> Use scroll gesture with modifier keys"
hitEnter

open "$HOME/Applications/VLC.app"
hitEnter

open "$HOME/Applications/Spotify.app"
hitEnter

open "$HOME/Applications/Texpad.app"
echo "register"
echo "auto typeset"
hitEnter

open "$HOME/Applications/Mendeley Desktop.app"
hitEnter

open ~/Applications/Evernote.app
echo "disable context"
hitEnter

open ~/Applications/Skitch.app
echo "login to evernote"
echo "enable helper"
echo "save new: ask"
echo "notebook: skitch"
echo "sync: 5min"

hitEnter

open /Applications/Wunderlist.app
hitEnter

open ~/Applications/Telegram.app
hitEnter

open ~/Applications/Caffeine.app
hitEnter

open ~/Applications/Cinch.app
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

open /System/Library/PreferencePanes/Notifications.prefPane/
echo "disable all"
hitEnter
