#!/bin/bash

current="$(pwd)"

# Clear old log
echo -e "RUNNING START SCRIPT\n========================" > $DEVLOG/start.log

# Give Neovim plugins time to finish
tmux new-session -d -s install "nvim"
sleep 10
tmux kill-session -t install

# Setup git config
git config --global user.email $GIT_EMAIL 
git config --global user.name $GIT_USER 
git config --global credential.helper store --file=/root/.git-credentials

# Go home and run infinite loop 
cd $current
sudo chown -R dpad:dpad /usr/local
sudo chown -R dpad:dpad /home/dpad

sleep infinity 

