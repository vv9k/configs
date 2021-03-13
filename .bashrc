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
alias update="paru && nvim -c 'PlugUpdate|q|q' && nvim -c 'CocUpdateSync|q|q'"
alias reflect="sudo reflector -l 100 --sort rate --save /etc/pacman.d/mirrorlist"
alias whatprovides="paru -Fy"
alias cleanup="paru -Sc"
alias night="redshift -l $(secret-tool lookup redshift location) &"
alias tmux="tmux -u" # utf-8 support
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Other ~~~~~
################################################################################
export GOPATH="$HOME/go/"
# Fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Starship shell
eval "$(starship init bash)"
