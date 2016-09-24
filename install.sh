#!/usr/bin/env bash

# Add the brew bin folder to the PATH variable.
export PATH="/usr/local/sbin:$PATH"

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install command-line tools.
xcode-select --install

# Install dotfiles
./scripts/dotfiles.sh --force

# Remove outdated versions from the cellar and update brew.
brew cleanup && brew update

./scripts/brew-install.sh
./scripts/brew-install-php.sh
./scripts/install-node.sh

# Remove outdated casks from the cellar and update cask.
brew cask cleanup && brew cask update

# Upgrade all existing casks
./scripts/brew-cask-update.rb
./scripts/brew-cask-install.sh

# Remove outdated versions from the cellars.
brew cleanup && brew cask cleanup

if [ -f "~/.zshrc" ]; then
    source ~/.zshrc;
fi
