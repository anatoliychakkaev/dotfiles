 # .bashrc

# ubuntu-server-tip

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

HISTSIZE=5000
export HISTCONTROL="ignoredups"
export PATH=$PATH:/var/lib/gems/1.8/bin/:/var/lib/gems/1.9.1/bin/

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[0;34m\]\D{%H:%M:%S} \u@vaio\[\033[00m\] \w \[\033[0;34m\]\$(parse_git_branch)\[\033[00m\] \n\[\033[0;38m\]~: )\[\033[00m\] "

# User specific aliases and functions

alias gi='gem install --no-rdoc --no-ri'

# rails aliases
alias rss='./script/server -p 1602'
alias rsc='./script/console'

# git aliases
alias glgr='git log --pretty=format:"%h : %s" --graph --date-order'
alias gsb='git show-branch'
alias glg='git log'
alias gst='git status'
alias ga='git add'
alias gl='git pull origin master && git submodule init && git submodule update'
alias gp='git push'
alias gd='git diff'
alias gc='git commit --verbose'
alias gcm='git commit --verbose -m'
alias gca='git commit --verbose -a'
alias gcam='git commit --verbose -a -m'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias grs='git reset --soft'
alias grh='git reset HEAD'

alias scam='svn commit -m'
alias msg='sudo tail /var/log/messages'
alias mysqld='sudo /etc/init.d/mysqld'

alias agi='sudo apt-get install'
alias ags='sudo apt-cache search'
alias ll="ls -la --color=auto"
alias apache="sudo service apache2"
alias remigrate='rake db:rollback && rake db:migrate'
alias migrate='rake db:migrate'
alias rollback='rake db:rollback'

function useicon {
	cp "/home/anatoliy/documents/icons/famfamfam/$1.png" /home/anatoliy/projects/myown/rails/webdesk/public/images/icons/;
}
alias ggg="git log --graph --abbrev-commit --date-order"
alias gg='git log --graph --pretty=format:"%Cblue%h%Creset - %s %Cgreen(%cr)%Creset %cn" --abbrev-commit --date-order'
alias rrg='rake routes | grep '
alias deploy_totspot='git pull origin flatsourcing && git push origin flatsourcing && cap fs_staging deploy:update && cap fs_staging deploy:restart'
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
# if [ `date +%H` -gt 20 ] || [ `date +%H` -lt 11 ]; then
	# rvm 1.8.7@rails3
	# rvm 1.8.7@rack101
# else
	# rvm 1.8.7@rails2310
	# rvm 1.8.7@rack101
# fi
# ADDED BY npm FOR NVM
# NVM_DIR=/usr/local/lib/node/.npm/nvm/0.0.3/package
# . $NVM_DIR/nvm.sh
# nvm use
# END ADDED BY npm FOR NVM
