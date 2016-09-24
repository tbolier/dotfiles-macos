# Timon’s dotfiles

Welcome to my dotfiles.<br />
Feel free to use, but before you do read this README.

Have tips or changes? Submit a pull request.

## Dependencies before installing
- Homebrew
- macOS
- Ruby

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
- Install PHP + php-version switcher.
- Install Node.JS + n version switcher and NPM.

## Not part of install script
- Airwatch fix "reboot issue" script (not part of full installation).

### Full installation
```bash
# Using git
git clone https://github.com/tbolier/dotfiles.git && cd dotfiles && ./install

# Already checked out?
./install
```

## Partial installation

```bash
# Script to fix the reboot issue.
./scripts/brew-install

# Script for installing my brew packages.
./scripts/brew-install

# Script for installing my casks.
./scripts/brew-cask-install

# Script for updating installed casks.
./scripts/brew-cask-update

# Script for installing my dotfiles.
./scripts/dotfiles

# Script for installing brew packages.
./scripts/brew-install

# Script for installing PHP + php-version.
./scripts/brew-install-php

# Script for installing n + Node.js and NPM.
./scripts/install-node
```