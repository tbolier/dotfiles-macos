#!/usr/bin/env bash

# Add the brew bin folder to the PATH variable.
export PATH="/usr/local/sbin:$PATH"

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install command-line tools.
xcode-select --install

# Remove outdated versions from the cellar.
brew cleanup && brew cask cleanup

# Make sure we’re using the latest updates.
brew update && brew cask update

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap homebrew/homebrew-php

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri
brew install vim --override-system-vi
brew install grep
brew install openssh
brew install screen
brew install zsh zsh-completions
brew install git
# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install autoconf
brew install freetype jpeg libpng gd zlib
brew install cask
brew install gettext
brew install libxml2
brew install composer
brew install openssl

# PHP Configuation
brew unlink php56 php70 php71

brew install php-version

brew install php56 --with-pear php56-xdebug php56-intl && pear install PHP_CodeSniffer
pear install PHP_CodeSniffer
brew unlink php56

brew install php70 --with-pear php70-xdebug php56-intl && pear install PHP_CodeSniffer
pear install PHP_CodeSniffer
brew unlink php70

brew install php71 --with-pear php71-xdebug php56-intl && pear install PHP_CodeSniffer

# Node configuration
curl -L http://git.io/n-install | bash
n latest --quiet # install latest version of node

# Install NPM
curl -L https://www.npmjs.com/install.sh | sh

# Upgrade all existing casks
./brew-cask-update.rb

# Install missing casks
brew cask install 1password
brew cask install alfred appzapper
brew cask install caffeine ccleaner
brew cask install dash datagrip
brew cask install google-chrome google-drive google-hangouts
brew cask install iterm2
brew cask install java
brew cask install paw phpstorm
brew cask install sequel-pro slack sourcetree spectacle sublime-text
brew cask install the-unarchiver
brew cask install vagrant virtualbox vnc-viewer
brew cask install whatsapp

# Remove outdated versions from the cellar and cleanup
brew cleanup && brew cask cleanup
