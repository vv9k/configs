################################################################################
#                          _               _                                   #
#                         | |             | |                                  #
#                         | |__   __ _ ___| |__  _ __ ___                      #
#                         | '_ \ / _` / __| '_ \| '__/ __|                     #
#                        _| |_) | (_| \__ \ | | | | | (__                      #
#                       (_)_.__/ \__,_|___/_| |_|_|  \___|                     #
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Functions ~~~~~
################################################################################
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Shell ~~~~~
################################################################################
# Ayu
#export PS1="\[\e[38;5;32;1m\]vv \[\e[38;5;228;1m\]\[\e[m\]\[\e[m\] | \[\e[38;5;202m\]\w\[\e[38;5;228m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;32;1m\]\n=>\[\e[m\] " #ayu
#------------------------------------------------------------------------------#
# Gruvbox
#export PS1="\[\e[38;5;142;1m\]vv \[\e[38;5;108;1m\]\[\e[m\]\[\e[m\] | \[\e[38;5;167m\]\w\[\e[38;5;108m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;142;1m\]\n=>\[\e[m\] " #gruvbox
#------------------------------------------------------------------------------#
# Solarized
#export PS1="\[\e[38;5;33;1m\]vv \[\e[38;5;166;1m\]\[\e[m\]\[\e[m\] | \[\e[38;5;37m\]\w\[\e[38;5;166m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;33;1m\]\n=>\[\e[m\] " #solarized
#export BAT_THEME="Solarized(light)"
#------------------------------------------------------------------------------#
# Nord
#export PS1="\[\e[38;5;6;1m\]vv \[\e[m\]\[\e[m\] | \[\e[38;5;6m\]\w\[\e[38;5;6m\]\$(parse_git_branch)\[\033[00m\] \[\e[m\]\[\e[38;5;6;1m\]\n=>\[\e[m\] " #nord
export PATH="$HOME/go/bin:$HOME/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export BAT_THEME="Nord"
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~
################################################################################
# Apps
alias cat='bat'
alias ls='exa --icons'
alias vim='nvim'
alias diff='diff --color=always -y'
alias spotify="spotifyd -u $(secret-tool lookup spotifyd login) -P 'secret-tool lookup spotifyd pass' --backend pulseaudio"
#------------------------------------------------------------------------------#
# Remote
alias sshpi='ssh -p 666 root@pytlas'
alias work="ssh wojtek@10.92.2.206"
alias vpn="sudo openvpn $HOME/vpn/work.ovpn"
alias vps="ssh $(secret-tool lookup vps login)@$(secret-tool lookup vps ip) -p $(secret-tool lookup vps port) -i $(secret-tool lookup vps idfile)"
#------------------------------------------------------------------------------#
# Util
alias theme="$HOME/dev/scripts/theme.sh"
alias update="yay -Syu && nvim -c 'PlugUpdate|q|q' && nvim -c 'CocUpdateSync|q|q'"
alias reflect="sudo reflector -l 100 --sort rate --save /etc/pacman.d/mirrorlist"
alias whatprovides="yay -Fy"
alias cleanup="yay -Sc"
alias night="redshift -l $(secret-tool lookup redshift location) &"
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Other ~~~~~
################################################################################
export GOPATH="$HOME/go/"
# Fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Starship shell
eval "$(starship init bash)"
