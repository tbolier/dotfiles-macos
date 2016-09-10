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

# Make sure we’re using the latest Homebrew.
brew update && brew cask update

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

brew tap homebrew/versions

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew tap homebrew/dupes
brew tap homebrew/homebrew-php
brew install vim --override-system-vi
brew install grep
brew install openssh
brew install screen
# https://github.com/Homebrew/homebrew-php
brew install php56 --with-debug --with-gmp --with-pear
brew install php56-intl
pear install PHP_CodeSniffer
brew install zsh zsh-completions
brew install git

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install autoconf
# Install other useful binaries.
brew install freetype jpeg libpng gd zlib
brew install cask
brew install gettext
brew install libxml2
brew install composer
brew install openssl

# Install applications
brew cask install 1password
brew cask install alfred appzapper
brew cask install caffeine ccleaner
brew cask install dash datagrip
brew cask install google-chrome google-drive google-hangouts
brew cask install iterm2
brew cask install java
brew cask install node
brew cask install paw phpstorm
brew cask install sequel-pro slack sourcetree spectacle spotify sublime-text
brew cask install the-unarchiver
brew cask install vagrant virtualbox vnc-viewer
brew cask install whatsapp

# Remove applications
sudo brew cask zap flinto
sudo brew cask zap hipchat
sudo brew cask zap puppet
sudo brew cask zap real-vnc

# Remove outdated versions from the cellar.
brew cleanup && brew cask cleanup
