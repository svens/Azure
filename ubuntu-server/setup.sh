#!/bin/sh

set -e

test -n "$1" -a -d "/home/$1" || exit 1

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install zsh tmux

user=$1
repo=https://raw.githubusercontent.com/svens/home/master
curl --silent --output /home/$user/.aliases $repo/aliases
curl --silent --output /home/$user/.env $repo/env
curl --silent --output /home/$user/.tmux.conf $repo/tmux.conf
curl --silent --output /home/$user/.zshrc $repo/zshrc
sudo chsh -s /bin/zsh $user
