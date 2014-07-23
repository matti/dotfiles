#!/usr/bin/env ruby

def system_verbose(cmd)
  puts cmd
  success = system(cmd)

  raise "command was not executed successfully" unless success
end

def brew_reinstall(package, opts={})
  if package.is_a? Array
    package.each do |p|
      brew_reinstall p, opts
    end

    return
  end

  puts "--[ #{package} ]".ljust(80,"-")
  if opts[:loads]
    launchctl_unload_cmd = "launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.#{package}.plist"
    system_verbose(launchctl_unload_cmd)
  end

  install_cmd = "brew reinstall #{package}"
  system_verbose(install_cmd)

  if opts[:loads]
    link_cmd = "ln -sfv /usr/local/opt/#{package}/*.plist ~/Library/LaunchAgents"
    system_verbose(link_cmd)

    launchctl_load_cmd = "launchctl load ~/Library/LaunchAgents/homebrew.mxcl.#{package}.plist"
    system_verbose(launchctl_load_cmd)
  end

  puts
end

brew_reinstall "git"

brew_reinstall ["postgresql", "redis"], loads: true
brew_reinstall "mongodb", loads: true

brew_reinstall "imagemagick"

brew_reinstall ["youtube-dl", "ffmpeg"]

system_verbose("sudo easy_install pip")
system_verbose("sudo pip install pycrypto")
system_verbose("ln -sf /usr/bin/python2.7 /usr/local/bin/python2")
brew_reinstall "yle-dl"

