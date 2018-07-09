# Timon’s dotfiles

Welcome to my dotfiles.
Feel free to use, but before you do read this README.

Have tips or changes? Submit a pull request.

## Dependencies before installing
- Homebrew
- macOS

### Optional for some script executables
- Ruby
- Python

## Dotfiles:
- Bash profile aliases
- Git config
- Vim config
- Z shell
- Z shell config

## Install script warnings
- The install script (full installation) will forcefully run all the partial scripts.
- Install brew packages, casks and execute other scripts.
- After you have forked the repository, update your credentials in ./files/.gitconfig
- Feel brave enough? Go ahead and read on.

## Install script features
- Install brew packages script.
- Install brew casks script.
- Update script for installed brew casks.
- Install PHP.
- Install Node.JS + n version switcher and NPM.

### Full installation
```bash
# Using git
git clone https://github.com/tbolier/dotfiles.git && cd dotfiles && ./install

# Already checked out?
./install
```

## Partial installation

```bash
# Install all script
./scripts/brew-install

# Script for installing PHP
./scripts/brew-install-php

# Script to update existing installs
./scripts/brew-upgrade

# Script for copying the dotfiles.
./scripts/dotfiles

# Script for installing n + Node.js and NPM.
./scripts/install-node

# Script for installing the Utimate VIM
./scripts/install-ultimate-vim
```