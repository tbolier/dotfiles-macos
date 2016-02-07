#!/usr/bin/env bash

# Add the brew bin folder to the PATH variable.
export PATH="/usr/local/sbin:$PATH"

# Install command-line tools.
xcode-select --install

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

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
brew install zsh zsh-completions
brew install git

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install autoconf
# Install other useful binaries.
brew install freetype jpeg libpng gd zlib
brew install brew-cask
brew install gettext
brew install libxml2
brew install composer
brew install openssl

# Install applications
brew cask install 1password
brew cask install alfred
brew cask install appzapper
brew cask install caffeine
brew cask install ccleaner
brew cask install dash
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install hipchat
brew cask install iterm2
brew cask install java
brew cask install node
brew cask install paw
brew cask install phpstorm
brew cask install puppet
brew cask install real-vnc
brew cask install sequel-pro
brew cask install slack
brew cask install sourcetree
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install vagrant
brew cask install virtualbox

# Remove outdated versions from the cellar.
brew cleanup && brew cask cleanup
