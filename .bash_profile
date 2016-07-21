# OSX Lion ssh logon:
# -bash: warning: setlocale: LC_CTYPE: cannot change locale (UTF-8)
export LC_CTYPE="en_US.UTF-8"

# Composer
alias cinstall='composer install'
alias cupdate='function(){composer update $1}'

# Coolblue
alias jumphost='ssh t.bolier@nlam01-vmjump01.servers.coolblue.nl'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Git
alias branch='git rev-parse --abbrev-ref HEAD'
alias rebase='function(){git fetch --all;git rebase -i $1}'
alias fetch='function(){git fetch --all}'
alias commit='function(){git commit -m "[${branch}] ${1}"}'

# Projects
alias projects='cd ~/Projects'

# Git
