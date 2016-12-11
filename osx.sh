#!/usr/bin/env bash

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}
sudo -v


defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#TODO: defaulttina pois textedit ym?
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 1

# Hot corners -> bottom left -> start screen saver
defaults write com.apple.dock "wvous-bl-corner" -int 5
defaults write com.apple.dock "wvous-bl-modifier" -int 0

#TODO: start screensaver after n mins?

#TODO: koita läppärillä
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#TODO: not avail anymore?
##defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

defaults write com.apple.finder ShowStatusBar -bool true
# open finder windows in home folder
defaults write com.apple.finder NewWindowTarget -string "PfHm"


## Safari

# It's the new "sometimes present statusbar"
defaults write com.apple.Safari ShowStatusBar -bool true

# Safari alt+cmd+left/right nav
defaults write com.apple.Safari NSUserKeyEquivalents -dict
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Show Previous Tab" "@~\\U2190"
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Show Next Tab" "@~\\U2192"

CFPreferencesAppSynchronize "com.apple.Safari"


#TODO: does not work in sierra?
# defaults write -g "com.apple.sound.beep.feedback" -int 0
# defaults write "com.apple.systemsound" "com.apple.sound.uiaudio.enabled" -int 0
# killall -HUP SystemUIServer

launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

sudo defaults write /Library/Preferences/com.apple.screensaver loginWindowModulePath "/System/Library/Screen Savers/FloatingMessage.saver"

#TODO: didn't work on new machine...
#defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 27 '{ enabled = 1; value = { parameters = (167,10,1048576); type = standard; }; }'

sudo systemsetup -setsleep Never
sudo systemsetup -setcomputersleep Never
sudo systemsetup -setdisplaysleep 180
sudo systemsetup -setremotelogin on
sudo systemsetup -setharddisksleep 30
sudo systemsetup -setrestartpowerfailure on
sudo systemsetup -setrestartfreeze on
sudo systemsetup -setallowpowerbuttontosleepcomputer on
