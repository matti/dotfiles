#!/usr/bin/env ruby

packages = [
  "skitch",
  "telegram",
  "p4merge",
  "google-chrome",
  "alfred",
  "vlc",
  "flowdock",
  "sourcetree",
  "skype",
  "virtualbox",
  "atom",
  "disk-inventory-x",
  "spotify",
  "cinch",
  "caffeine",
  "evernote",
  "carbon-copy-cloner"
]

for package in packages do
  system("brew cask install #{package}")
end
