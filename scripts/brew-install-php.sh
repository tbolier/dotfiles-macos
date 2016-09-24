#!/usr/bin/env bash

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

php-version 71
