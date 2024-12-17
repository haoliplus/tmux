#!/bin/bash

CURRENT_DIR=$(pwd)
mkdir ${HOME}/.config/tmux
ln -s ${CURRENT_DIR}/.tmux.conf ${HOME}/.config/tmux/tmux.conf
cp ${CURRENT_DIR}/.tmux.conf.local ${HOME}/.config/tmux/tmux.conf.local
