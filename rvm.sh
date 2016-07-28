#!/usr/bin/env bash
set -e

if ! [ -e "$HOME/.rvm/scripts/rvm" ]; then
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  \curl -sSL https://get.rvm.io | bash

  source "$HOME/.rvm/scripts/rvm"
fi

version=$1
if [ -z $version ]; then
  echo "fetching known rubies..."
  sleep 1

  rvm list known
  echo -n "install version [2.3.latest]: "
  read version
  version=${version:-2.3}
fi

rvm install $version

rvm use $version@global
gem install bundler
