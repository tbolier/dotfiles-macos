# OSX Lion ssh logon:
# -bash: warning: setlocale: LC_CTYPE: cannot change locale (UTF-8)
export LC_CTYPE="en_US.UTF-8"

# Add to PATH
export PATH="$HOME/n/bin:$PATH"

# Add to current shell
source $(brew --prefix php-version)/php-version.sh && php-version 5

# Aliases

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
alias rebase='function(){git fetch origin/master;git fetch upstream/master;git rebase -i $1}'
alias fetch='function(){git fetch -all}'
alias commit='_gitCommit'

_gitCommit ()
{
    issueKey="${$(branch)##*/}"
    if [ "$issueKey" = "master" ]; then
        echo "Enter your issue key:"
        read issueKey
    fi

    if [ ! -z "$issueKey" ]; then
        git commit -m "[${issueKey}] ${1}"
    else
        git commit -m "${1}"
    fi
}

# Projects
alias projects='cd ~/Projects'
