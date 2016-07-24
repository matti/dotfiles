require 'kommando'

bundle_ids = {}
bundle_ids[:vlc] = Kommando.run("mdls -name kMDItemCFBundleIdentifier -r /Applications/VLC.app").out
bundle_ids[:atom] = Kommando.run("mdls -name kMDItemCFBundleIdentifier -r /Applications/Atom.app").out

extensions = {
  mp4: :vlc,
  md: :atom,
  rb: :atom,
  txt: :atom,
  sh: :atom
}

extensions.each_pair do |extension, app|
  duti_cmd = "duti -s #{bundle_ids[app]} .#{extension.to_s} all"
  k = Kommando.run duti_cmd
  raise unless k.code == 0
end
