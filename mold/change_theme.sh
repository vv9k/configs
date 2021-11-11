#!/bin/bash

THEME=$1

THEMES=(
    "ayu"
    "bogster"
    "ghdark"
    "gruvbox"
    "gruvbox_light"
    "solarized"
    "nord"
)


function render() {
    local theme=$1
    local inp=$2
    local out=$3
    echo "  $inp ~~> $out"
    mold render -c context.yml -n $1 $2 $3
}

function enable_theme() {
    local theme=$1
    echo "Enabling theme $theme"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    render $theme ./alacritty.yml ~/.config/alacritty/alacritty.yml
    render $theme ./bspwm/bspwmrc ~/.config/bspwm/bspwmrc
    render $theme ./.gtkrc-2.0 ~/.config/.gtkrc-2.0 
    render $theme ./gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
    render $theme ./.tmux.conf ~/.tmux.conf
    render $theme ./polybar/colors.ini ~/.config/polybar/colors.ini
    render $theme ./polybar/modules.ini ~/.config/polybar/modules.ini
    render $theme ./polybar/config.ini ~/.config/polybar/config.ini
    render $theme ./rofi/config.rasi ~/.config/rofi/config.rasi
    render $theme ./lightdm/lightdm.conf /etc/configs/etc/lightdm/lightdm.conf
    render $theme ./nvim/mycolors.lua ~/.config/nvim/lua/mycolors.lua
}

if [[ " ${THEMES[@]} " =~ " $THEME " ]]
then
    enable_theme $THEME
    pkill panel;$XDG_CONFIG_DIR/bspwm/bspwmrc > /dev/null 2>&1 # restart bspwm
    tmux source-file $HOME/.tmux.conf
    tmux source-file $HOME/.tmux.conf
else
    echo "Unsupported theme $THEME"
    echo -e "Available themes: \n${THEMES[@]}"
    exit 1
fi

                                         
