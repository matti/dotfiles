export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use 0.12

export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home

export ANDROID_HOME=$HOME/android-sdk-macosx
export PATH=$ANDROID_HOME/tools:$PATH

export GENYMOTION_APP=/opt/homebrew-cask/Caskroom/genymotion/2.3.0/Genymotion.app
export GENYMOTION_SHELL=/opt/homebrew-cask/Caskroom/genymotion/2.3.0/Genymotion\ Shell.app

export LANGUAGE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export ATOM_PATH=/usr/local/bin/atom

#[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

export GOPATH=$HOME/.go
export PATH=$HOME/.go/bin/:$PATH

export PATH=$HOME/bin:/usr/local/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm use 2.2.2@global
