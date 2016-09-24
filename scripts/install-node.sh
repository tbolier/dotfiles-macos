#!/usr/bin/env bash

# Node configuration
if [ ! -d "$HOME/n" ]; then
    curl -L http://git.io/n-install | bash
fi
n latest --quiet # install latest version of node

# Install NPM
curl -L https://www.npmjs.com/install.sh | sh
