#!/usr/bin/env ruby

packages = [
  "p4merge",
  "google-chrome",
  "alfred",
  "vlc",
  "flowdock",
  "sourcetree",
  "skype",
  "genymotion",
  "virtualbox",
  "atom",
  "disk-inventory-x"
]

for package in packages do
  system("brew cask install #{package}")
end
