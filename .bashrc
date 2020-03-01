parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[38;5;97;1m\]vv\[\e[m\]\[\e[m\] | \[\e[38;5;197m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;182;1m\]\n↳\[\e[m\]"
export PATH="/home/wojtek/bin:/home/wojtek/.cargo/bin:$PATH"

# to make 256 colors work in tmux
#termite
export TERM="xterm-256color"
# Or for urxvt
#export TERM="urxvt-256color"


alias ls='exa'
alias vim='nvim'
alias diff='diff --color=always -y'
alias autoremove='yaourt -Qtd'
alias sshpi='ssh -p 666 root@pytlas'
alias spotify="spotifyd -u $(secret-tool lookup spotifyd login) -P 'secret-tool lookup spotifyd pass'"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
