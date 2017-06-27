#!/bin/bash
# Set up terminal
sudo apt-get update
sudo apt-get install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
mkdir -p ~/.oh-my-zsh/custom/themes/
curl -o ~/.oh-my-zsh/custom/themes/agnoster-newline.zsh-theme https://gist.githubusercontent.com/nweddle/e456229c0a773c32d37b/raw/b4fef3b4a113677e47ab08cc98bd8cbc71d1a4dc/agnoster-newline.zsh-theme
echo '
ZSH_THEME="agnoster-newline"
plugins=(git)
source $ZSH/oh-my-zsh.sh
' >> ~/.zshrc