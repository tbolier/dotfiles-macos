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

## Not part of the install script
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

# Script for updating installed casks.
./scripts/brew-cask-update

# Script for installing my dotfiles.
./scripts/dotfiles
3270Medium.ttf
3270Narrow.ttf
3270SemiNarrow.ttf
Anonymice Powerline Bold Italic.ttf
Anonymice Powerline Bold.ttf
Anonymice Powerline Italic.ttf
Anonymice Powerline.ttf
Arimo Bold for Powerline.ttf
Arimo Bold Italic for Powerline.ttf
Arimo for Powerline.ttf
Arimo Italic for Powerline.ttf
Cousine Bold for Powerline.ttf
Cousine Bold Italic for Powerline.ttf
Cousine for Powerline.ttf
Cousine Italic for Powerline.ttf
D2Coding Bold for Powerline.ttf
D2Coding for Powerline.ttf
DejaVu Sans Mono Bold for Powerline.ttf
DejaVu Sans Mono Bold Oblique for Powerline.ttf
DejaVu Sans Mono for Powerline.ttf
DejaVu Sans Mono Oblique for Powerline.ttf
Droid Sans Mono Dotted for Powerline.ttf
Droid Sans Mono for Powerline.otf
Droid Sans Mono Slashed for Powerline.ttf
encodings.dir
fontawesome-regular.ttf
fonts.dir
fonts.list
fonts.scale
FuraMono-Bold Powerline.otf
FuraMono-Medium Powerline.otf
FuraMono-Regular Powerline.otf
Go Mono Bold for Powerline.ttf
Go Mono Bold Italic for Powerline.ttf
Go Mono for Powerline.ttf
Go Mono Italic for Powerline.ttf
Hack-Bold.ttf
Hack-BoldItalic.ttf
Hack-Italic.ttf
Hack-Regular.ttf
Inconsolata Bold for Powerline.ttf
Inconsolata for Powerline.otf
Inconsolata-dz for Powerline.otf
Inconsolata-g for Powerline.otf
Literation Mono Powerline Bold Italic.ttf
Literation Mono Powerline Bold.ttf
Literation Mono Powerline Italic.ttf
Literation Mono Powerline.ttf
Meslo LG L Bold for Powerline.ttf
Meslo LG L Bold Italic for Powerline.ttf
Meslo LG L DZ Bold for Powerline.ttf
Meslo LG L DZ Bold Italic for Powerline.ttf
Meslo LG L DZ Italic for Powerline.ttf
Meslo LG L DZ Regular for Powerline.ttf
Meslo LG L Italic for Powerline.ttf
Meslo LG L Regular for Powerline.ttf
Meslo LG M Bold for Powerline.ttf
Meslo LG M Bold Italic for Powerline.ttf
Meslo LG M DZ Bold for Powerline.ttf
Meslo LG M DZ Bold Italic for Powerline.ttf
Meslo LG M DZ Italic for Powerline.ttf
Meslo LG M DZ Regular for Powerline.ttf
Meslo LG M Italic for Powerline.ttf
Meslo LG M Regular for Powerline.ttf
Meslo LG S Bold for Powerline.ttf
Meslo LG S Bold Italic for Powerline.ttf
Meslo LG S DZ Bold for Powerline.ttf
Meslo LG S DZ Bold Italic for Powerline.ttf
Meslo LG S DZ Italic for Powerline.ttf
Meslo LG S DZ Regular for Powerline.ttf
Meslo LG S Italic for Powerline.ttf
Meslo LG S Regular for Powerline.ttf
Monofur Bold for Powerline.ttf
Monofur for Powerline.ttf
Monofur Italic for Powerline.ttf
Noto Mono for Powerline.ttf
NovaMono for Powerline.ttf
ProFont Bold For Powerline.ttf
ProFont For Powerline.ttf
Roboto Mono Bold for Powerline.ttf
Roboto Mono Bold Italic for Powerline.ttf
Roboto Mono for Powerline.ttf
Roboto Mono Italic for Powerline.ttf
Roboto Mono Light for Powerline.ttf
Roboto Mono Light Italic for Powerline.ttf
Roboto Mono Medium for Powerline.ttf
Roboto Mono Medium Italic for Powerline.ttf
Roboto Mono Thin for Powerline.ttf
Roboto Mono Thin Italic for Powerline.ttf
Shure Tech Mono Nerd Font Complete Mono.ttf
Source Code Pro Black for Powerline.otf
Source Code Pro Bold for Powerline.otf
Source Code Pro ExtraLight for Powerline.otf
Source Code Pro for Powerline.otf
Source Code Pro Light for Powerline.otf
Source Code Pro Medium for Powerline.otf
Source Code Pro Powerline BlackItalic.otf
Source Code Pro Powerline BoldItalic.otf
Source Code Pro Powerline ExtraLightItalic.otf
Source Code Pro Powerline Italic.otf
Source Code Pro Powerline LightItalic.otf
Source Code Pro Powerline MediumItalic.otf
Source Code Pro Powerline SemiboldItalic.otf
Source Code Pro Semibold for Powerline.otf
Space Mono Bold for Powerline.ttf
Space Mono Bold Italic for Powerline.ttf
Space Mono for Powerline.ttf
Space Mono Italic for Powerline.ttf
SpaceMono-Bold.ttf
SpaceMono-BoldItalic.ttf
SpaceMono-Italic.ttf
SpaceMono-Regular.ttf
Symbol Neu for Powerline.ttf
ter-powerline-x12b.pcf.gz
ter-powerline-x12n.pcf.gz
ter-powerline-x14b.pcf.gz
ter-powerline-x14n.pcf.gz
ter-powerline-x16b.pcf.gz
ter-powerline-x16n.pcf.gz
ter-powerline-x18b.pcf.gz
ter-powerline-x18n.pcf.gz
ter-powerline-x20b.pcf.gz
ter-powerline-x20n.pcf.gz
ter-powerline-x22b.pcf.gz
ter-powerline-x22n.pcf.gz
ter-powerline-x24b.pcf.gz
ter-powerline-x24n.pcf.gz
ter-powerline-x28b.pcf.gz
ter-powerline-x28n.pcf.gz
ter-powerline-x32b.pcf.gz
ter-powerline-x32n.pcf.gz
Tinos Bold for Powerline.ttf
Tinos Bold Italic for Powerline.ttf
Tinos for Powerline.ttf
Tinos Italic for Powerline.ttf
Ubuntu Mono derivative Powerline Bold Italic.ttf
Ubuntu Mono derivative Powerline Bold.ttf
Ubuntu Mono derivative Powerline Italic.ttf
Ubuntu Mono derivative Powerline.ttf
# Script for installing PHP + php-version.
./scripts/brew-install-php

# Script for installing n + Node.js and NPM.
./scripts/install-node
```