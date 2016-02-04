# OSX Lion ssh logon:
# -bash: warning: setlocale: LC_CTYPE: cannot change locale (UTF-8)
export LC_CTYPE="en_US.UTF-8"

alias jumphost='ssh t.bolier@nlam01-vmjump01.servers.coolblue.nl'

alias pup='cd ~/Projects/Puppet/puppet-coolblue-core'

alias git-rebase-master='git checkout master;git fetch --all;git rebase upstream/master'

alias vu-webshop='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant up webshop'
alias vp-webshop='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant provision webshop'
alias vr-webshop='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant reload webshop'
alias vh-webshop='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant halt webshop'

alias ci-webshop="cd ~/Projects/Webshop/php-skunkworks;composer install"
alias cu-webshop="cd ~/Projects/Webshop/php-skunkworks;composer update"

alias vu-productfeed='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant up product-feed-service'
alias vp-productfeed='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant provision product-feed-service'
alias vr-productfeed='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant reload product-feed-service'
alias vh-productfeed='cd ~/Projects/Puppet/puppet-coolblue-core;vagrant halt product-feed-service'


