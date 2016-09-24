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
brew install openssl
