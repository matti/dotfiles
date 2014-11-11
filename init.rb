#!/usr/bin/env ruby

files=[
".gitconfig",
".nanorc",
".zshrc"
]


for file in files do
  system("rm #{ENV['HOME']}/#{file}")
  system("ln -s #{Dir.pwd}/#{file} #{ENV['HOME']}/#{file}")
end
