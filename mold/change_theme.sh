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

function enable_theme() {
    local theme=$1
    echo "Enabling theme $theme"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    mold render-context context.yml -n $1
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

                                         
