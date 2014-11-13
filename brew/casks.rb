#!/usr/bin/env ruby

packages = [
  "p4merge",
  "google-chrome",
  "alfred",
  "vlc",
  "flowdock",
  "sourcetree"
]

for package in packages do
  system("brew cask install #{package}")
end
