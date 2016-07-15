#!/bin/bash
echo -n "Install Bash Profile";
rm ~/.bash_profile .profile;
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile;
ln -s ~/.dotfiles/bash/profile ~/.profile;
source ~/.bash_profile;
echo -n "Install Bin Files";
mkdir ~/bin;
ln -s ~/.dotfiles/bin/upload.sh ~/bin/upload.sh;
exit 0;
