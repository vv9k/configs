parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[38;5;97;1m\]vv \[\e[38;5;49;1m\]\[\e[m\]\[\e[m\] | \[\e[38;5;204m\]\w\[\e[38;5;48m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;182;1m\]\n↳\[\e[m\]"
export PATH="/home/wojtek/bin:/home/wojtek/.cargo/bin:$PATH"
export EXA_COLORS="di=35;01:ur=38;5;204;01:gr=38;5;204:tr=38;5;204:uw=38;5;164;01:gw=38;5;164:tw=38;5;164:ux=38;5;201;01:ue=38;5;162;01:gx=38;5;162:tx=38;5;162:uu=38;5;48;01:un=38;5;48:gu=38;5;48;01:gn=38;5;48:da=38;5;97:sn=38;5;204;01:sb=38;5;204"

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
