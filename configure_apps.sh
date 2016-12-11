#!/usr/bin/env bash

source ./default.sh

header "Virtualbox"
open /Applications/VirtualBox.app
hitEnter

header "Cinch"
open /Applications/Cinch.app
item "check Start Cinch automatically at login"
hitEnter

header "Alfred 3"
open "/Applications/Alfred 3.app"
item "Register"
item "Advanced / Sync"
hitEnter

header "Skype"
open "/Applications/Skype.app"
item "Hnnggh"
hitEnter

header "Telegram"
open "/Applications/Telegram.app"
item "General / Advanced"
item "check Auto download"
item "uncheck sound effects"
item "Privacy / Passcode"
item "Privacy / Autolock 5min"
hitEnter

set +e
open "/Applications/Docker.app"
set -e
item "- TODO"
hitEnter

header "VLC"
open "/Applications/VLC.app"
hitEnter

header "Spotify"
open "/Applications/Spotify.app"
item "Mackup prefs work?"
hitEnter

header "Skitch"
open /Applications/Skitch.app
hitEnter

header "Caffeine"
open /Applications/Caffeine.app
item "Mackup works?"
hitEnter

header "Spectacle"
open /Applications/Spectacle.app
hitEnter

header "Franz"
open /Application/Franz.app
item "TODO: 'mackup-copy' ~/Library/Application Support/Franz/{settings} ?"
hitEnter

# ---

open "https://facebook.com"
hitEnter


open "$HOME/Applications/Google Chrome.app"
echo "chrome://flags/ -- Enable the new avatar menu"

echo "For every profile:"
echo "click to play"

hitEnter

open "$HOME/Applications/Flowdock.app"
hitEnter

open "$HOME/Applications/SourceTree.app"
hitEnter


open /Applications/Wunderlist.app
hitEnter
