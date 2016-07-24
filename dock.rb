require 'kommando'

applications = ["Telegram", "Google Chrome", "VLC", "Spotify"]

applications.each do |a|
  dockutil_add_cmd = "$ dockutil --add '/Applications/#{a}.app' --replacing '#{a}' --no-restart"
  add = Kommando.run dockutil_add_cmd

  unless add.code == 0
    Kommando.run "killall Dock"
    raise "#{add.out}"
  end
end

Kommando.run "killall Dock"
