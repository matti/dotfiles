dotfiles
========

## new machine install:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/matti/dotfiles/master/bootstrap.sh)"
```

```
./osx.sh
./configure_osx.sh
./oh-my-zsh.sh
./homebrew.sh
brew bundle -v --file=brews/Brewfile.initial
mackup restore
brew bundle -v --file=brews/Brewfile.rest
./configure_apps.sh
```
