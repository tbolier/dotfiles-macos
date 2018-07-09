# OSX Lion ssh logon:
if ! ssh-add -l | \
    grep -q "$(ssh-keygen -lf ~/.ssh/id_rsa.pub | awk '{print $2}')"; \
    then ssh-add -k ~/.ssh/id_rs; \
fi

# -bash: warning: setlocale: LC_CTYPE: cannot change locale (UTF-8)
export LC_CTYPE="en_US.UTF-8"

# Add to PATH
export PATH="$HOME/n/bin:$PATH"
export PATH="/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}"
export PATH="/usr/local/share/dotnet:$PATH"
export ANSIBLE_VAULT_PASSWORD_FILE="~/.vault_pass.txt"

# Aliases
alias timereg="php ~/Projects/toggl-jira/bin/toggljira.php sync"
alias timereg_redmine="toggl2redmine time-entry-sync"

# Composer
alias cinstall='composer install'
alias cupdate='function(){composer update $1}'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Git
alias branch='git rev-parse --abbrev-ref HEAD'
alias branch-prune-merged="function(){git fetch --all > /dev/null | echo ${1} | git branch --merged ${1} | grep -ve '^[ *]\sdevelop$'  | grep -ve '^[ *]\srelease$' | grep -ve '^[ *]\smaster$' > /tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d < /tmp/merged-branches}"
alias rebase='function(){git fetch origin;git rebase -i $1}'
alias rebase-recursive='~/git-rebase-recursive'
alias fetch='function(){git fetch -all}'
alias diff='~/git-diff-recursive'
alias commit='_gitCommit'

_gitCommit ()
{
    issueKey="${$(branch)##*/}"
    if [ "$issueKey" = "master" ]; then
        echo "Enter your issue key:"
        read issueKey
    fi

    if [ ! -z "$issueKey" ]; then
        git commit -m "${issueKey} ${1}"
    else
        git commit -m "${1}"
    fi
}

# Projects
alias projects='cd ~/Projects'

# Zend commands
alias zend-clean-cache='find ./data -name "*.php" -type f -print0 | xargs -0 /bin/rm -f'
