if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias ll='ls -FGlAhp --color=always'
alias server='php -S 0.0.0.0:8000 $@'

export COMPOSER_DISABLE_XDEBUG_WARN=1

green=$(tput -Txterm setaf 2)
yellow=$(tput -Txterm setaf 3)
reset=$(tput -Txterm sgr0)

export PS1="[\A] $yellow\]\u@codeup : $green\]\W$reset\] \\$\[$(tput sgr0)\] "
