#!/bin/bash
########################################
CURR_DIR=$(pwd)
CURR_OS=$(uname)
########################################
# Sanity check
if [[ "$CURR_OS" != *"Linux"* ]]; then
    echo "ERROR --> Incorrect OS detected for this target!"
    exit
fi
########################################
# Make TRASH directory if it doesn't already exist
mkdir ~/TRASH
########################################
# Save old vimrc if one exists
if [[ -f "$HOME/.vimrc" ]]; then
    echo "LOG --> Found existing .vimrc file! Saving backup!"
    mkdir -p $HOME/.vimrc_bups
    cp ~/.zshrc ~/.vimrc_bups/.bup_vimrc
    # Delete old .vimrc
    rm "$HOME/.vimrc"
fi
