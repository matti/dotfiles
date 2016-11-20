#!/usr/bin/env bash

printf "Name of this machine:"
read NEWNAME

echo "Setting HostName, LocalHostName, ComputerName to $NEWNAME"
sudo scutil --set HostName $NEWNAME
sudo scutil --set LocalHostName $NEWNAME
sudo scutil --set ComputerName $NEWNAME

open /System/Library/PreferencePanes/iCloudPref.prefPane
echo "Login to iCloud and hit enter"
read

echo "Generating a new key, remember to set a passphrase"
ssh-keygen
cat ~/.ssh/id_rsa.pub | tee pbcopy
echo "set key to github and hit enter"
read

echo "Install XCode"
git

until [ $(xcode-select -p 2>/dev/null) ]; do
  echo "$(date) Waiting XCode install to finish..";
  sleep 5
done

sudo xcodebuild -license

mkdir -p $HOME/dev
cd $HOME/dev
git clone git@github.com:matti/dotfiles
