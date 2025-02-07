#!/bin/bash

CURRENT_DIR=$(pwd)
git clone git@github.com:haoliplus/tmux.git ${HOME}/.config/tmux

export TMUX_CONF=${HOME}/.config/tmux/tmux.conf
export TMUX_CONF_LOCAL=${HOME}/.config/tmux/.tmux.conf.local

if [ $SHELL = "/bin/zsh" ]; then
    echo "export TMUX_CONF=${TMUX_CONF}" >> ${HOME}/.zshrc
    echo "export TMUX_CONF_LOCAL=${TMUX_CONF_LOCAL}" >> ${HOME}/.zshrc
elif [ $SHELL = "/bin/bash" ]; then
    echo "export TMUX_CONF=${TMUX_CONF}" >> ${HOME}/.bashrc
    echo "export TMUX_CONF_LOCAL=${TMUX_CONF_LOCAL}" >> ${HOME}/.bashrc
fi
