################################################################################
#                                   FUNCS                                      #
################################################################################
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

################################################################################
#                                  EXPORTS                                     #
################################################################################

# shell
PROMPT_COMMAND=echo
export PS1="\[\e[38;5;33;1m\]vv \[\e[38;5;166;1m\]漣\[\e[m\]\[\e[m\] | \[\e[38;5;37m\]\w\[\e[38;5;166m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;33;1m\]\n=>\[\e[m\] " #solarized
export LC_ALL="en_US.UTF-8"
export EXA_COLORS=
export EDITOR="nvim"

# proxy
export https_proxy="http://proxy.softax.local:8080/"
export HTTPS_PROXY="http://proxy.softax.local:8080/"
export no_proxy=".softax.local,127.0.0.1"
export NO_PROXY=".softax.local,127.0.0.1"

# paths
export PATH="$PATH:/home/wojtek/.gem/ruby/2.6.0/bin"
export PATH="$PATH:/home/wojtek/.local/bin"
export PATH="$PATH:/home/wojtek/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"
export GOPATH="$HOME/go"

# misc
export REPORTER_AUTH="CjK8xrYc3yVZ9cSESGyJyUFvLatevptAe5Zm83DvuVw24CjtfzEzqHs6WX26ECtgz24dX"

# fzf
export FZF_DEFAULT_COMMAND="fd"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

################################################################################
#                                  ALIASES                                     #
################################################################################

# utilities
alias reflect="sudo reflector -l 100 --sort rate --save /etc/pacman.d/mirrorlist"
alias cleanup="yay -Yc"
alias mgmt="python /home/wojtek/dev/user_mgmt/main.py"

# bins
alias ls="exa"
alias grep="rg"
alias vim="nvim"
alias diff="diff --color=always -y"
alias ssh="TERM=xterm ssh"
alias cat="bat"

# remote
alias zabbixbank="ssh -L 8888:10.1.16.101:80 sfxsupport@10.1.16.64"
alias otis="rdesktop -K -g 1920x1200 otis2"
alias vbackup="rdesktop -K -g 1920x1200 vbackup"
alias kvm="java -jar /home/wojtek/bin/iClientJ.jar"

################################################################################
