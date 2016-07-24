#!/bin/bash
echo "Install Bash Profile";
rm ~/.bash_profile .profile;
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile;
ln -s ~/.dotfiles/bash/profile ~/.profile;
source ~/.bash_profile;
echo "Install Bin Files";
mkdir ~/bin;
chmod +x ~/.dotfiles/bin/*.sh;
ln -s ~/.dotfiles/bin/upload.sh ~/bin/upload.sh;
echo "Install Ngix";
mkdir ~/workspace;
sudo bash ~/.dotfiles/bin/setup-nginx.sh;
exit 0;
