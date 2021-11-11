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
export BAT_THEME="gruvbox-dark"
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~
################################################################################
# Apps
alias cat='bat'
alias ls='exa --icons'
alias vim='nvim'
alias spotify="spotifyd -u $(secret-tool lookup spotifyd login) -P 'secret-tool lookup spotifyd pass' --backend pulseaudio"
#------------------------------------------------------------------------------#
# Remote
alias sshpi='ssh pivvo'
alias work="ssh -Y wojtek@10.92.2.206"
alias vpn="sudo openvpn $HOME/vpn/work.ovpn"
alias vps="ssh $(secret-tool lookup vps login)@$(secret-tool lookup vps ip) -p $(secret-tool lookup vps port) -i $(secret-tool lookup vps idfile)"
#------------------------------------------------------------------------------#
# Git
alias gap='git commit --amend .'
alias ga='git commit --amend'
alias gc='git commit'
alias gl='git log'
alias gs='git status'
alias gp='git push'
alias gpp='git push --force'
alias gm='git checkout master'
alias gt='git stash'
#------------------------------------------------------------------------------#
# Util
alias update="paru && nvim -c 'PlugUpdate|q|q' && nvim -c 'CocUpdateSync|q|q'"
alias reflect="sudo reflector -l 100 --sort rate --save /etc/pacman.d/mirrorlist"
alias whatprovides="paru -Fy"
alias cleanup="paru -Sc"
alias cleanup_rs="rm -rf $HOME/dev/rust/*/target/* $HOME/dev/rust/*/*/target/*"
alias night="redshift -l $(secret-tool lookup redshift location) &"
alias tmux="tmux -u" # utf-8 support
alias testvm="qemu-system-x86_64 -enable-kvm -cdrom ~/Downloads/archlinux-2021.05.01-x86_64.iso -boot order=d -drive file=~/test_arch,format=raw -m 6G -smp 6 -nic user,hostfwd=tcp::10022-:22"
alias sshvm="ssh root@localhost -p 10022"
alias ecowsvps="ssh $(secret-tool lookup vps ecows)"
alias scpecows="scp $(secret-tool lookup vps ecows)"

################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Other ~~~~~
################################################################################
export GOPATH="$HOME/go/"
export CALIBRE_USE_DARK_PALETTE=1
export EDITOR="nvim"

# Fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Starship shell
eval "$(starship init bash)"
