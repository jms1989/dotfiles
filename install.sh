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
exit 0;
