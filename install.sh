#!/bin/bash
echo "Install Bash Profile";
rm ~/.bash_profile ~/.profile ~/.bashrc 2> /dev/null;
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile;
ln -s ~/.dotfiles/bash/profile ~/.profile;
ln -s ~/.dotfiles/bash/bashrc ~/.bashrc;
touch ~/.environment;
echo "Install Bin Files";
mkdir ~/bin;
chmod +x ~/.dotfiles/bin/*.sh;
ln -s ~/.dotfiles/bin/upload.sh ~/bin/upload.sh;
echo "Please logout and log back in to apply environmental scripts or source .bashrc and .bash_profile";
exit 0;
