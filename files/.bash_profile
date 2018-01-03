# OSX Lion ssh logon:
# -bash: warning: setlocale: LC_CTYPE: cannot change locale (UTF-8)
export LC_CTYPE="en_US.UTF-8"

# Add to PATH
export PATH="$HOME/n/bin:$PATH"
export PATH="/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}"
export PATH="/usr/local/share/dotnet:$PATH"
export PHP_VERSIONS="$HOME/local/php $HOME"
export ANSIBLE_VAULT_PASSWORD_FILE="~/.vault_pass.txt"

# Add to current shell
source ~/.fonts/*.sh
source $(brew --prefix php-version)/php-version.sh && php-version 7

# Aliases
alias timereg="toggl2redmine time-entry-sync";

# Composer
alias cinstall='composer install'
alias cupdate='function(){composer update $1}'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Git
alias branch='git rev-parse --abbrev-ref HEAD'
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

# VPN
alias vpn="sudo openfortivpn -c ~/.openfortivpn"

# Projects
alias projects='cd ~/Projects'

# Zend commands
alias zend-clean-cache='find ./data -name "*.php" -type f -print0 | xargs -0 /bin/rm -f'

alias loadbalancer="echo 80.95.165.151"
alias prod_web1="ssh acsi@80.95.166.51"
alias prod_web2="ssh acsi@80.95.166.52"
alias prod_web3="ssh acsi@80.95.166.55"
alias prod_web4="ssh aroot@80.95.166.129"
alias staging="ssh root@staging.acsi.lan"
alias testing="ssh root@test.acsi.lan"
alias dev="ssh root@dev.acsi.lan"
alias solr1="ssh acsi@80.95.166.130"
alias solr2="ssh acsi@80.95.166.131"
alias jenkins="ssh root@ci.acsi.lan"
alias magento="ssh acsi@80.95.166.56"
alias cache1="ssh acsi@80.95.166.49"
alias cache2="ssh acsi@80.95.166.50"
alias wordpress="ssh acsi@80.95.166.57"
alias db1="ssh aroot@80.95.166.139"
alias db2="ssh aroot@80.95.166.140"
alias redmine="ssh michelm@172.16.20.80"
alias wiki="ssh michelm@wiki.acsi.lan"
alias ccc="ssh michelm@ccc.acsi.lan"
alias jeep_dev_source="ssh root@172.16.20.229" # jeep source code
alias jeep_dev_mysql="ssh root@172.16.20.227" # jeep mysql server
alias mini_test_source="ssh root@172.16.20.230" # mini source code
alias mini_test_mysql="ssh root@172.16.20.231" # mini mysql server
alias test_old="ssh root@172.16.20.230" # hummer
alias china="ssh acsi@42.159.147.94"
alias cdn="ssh aroot@80.95.166.135" # content.acsi.eu

# Mounting projects
alias mount_controlpanel="sshfs -o IdentityFile=~/.ssh/id_rsa root@172.16.20.229:/data/www/controlpanel.acsi.eu ~/Projects/jeep/controlpanel.acsi.eu && sshfs -o IdentityFile=~/.ssh/id_rsa root@172.16.20.229:/data/www/lib ~/Projects/jeep/lib"
