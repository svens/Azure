#!/bin/sh

set -e

logger -t setup-env "Update APT"
sudo apt-get -y update
sudo apt-get -y upgrade

logger -t setup-env "Install apps"
sudo apt-get -y install zsh tmux

logger -t setup-env "Setup env"
cd ~
homerepo=https://raw.githubusercontent.com/svens/home/master
curl -o .aliases $homerepo/aliases
curl -o .env $homerepo/env
curl -o .tmux.conf $homerepo/tmux.conf
curl -o .zshrc $homerepo/zshrc
sudo chsh -s /bin/zsh $(whoami)
