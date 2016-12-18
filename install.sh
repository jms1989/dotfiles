#!/bin/bash
echo "Installed Bash Profile.";
rm ~/.bash_profile ~/.profile ~/.bashrc 2> /dev/null;
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile;
ln -s ~/.dotfiles/bash/profile ~/.profile;
ln -s ~/.dotfiles/bash/bashrc ~/.bashrc;
ln -s ~/.dotfiles/bash/screenrc ~/.screenrc;
touch ~/.environment;
echo "Installed Bin Files.";
mkdir ~/bin;
chmod +x ~/.dotfiles/bin/*.sh;
ln -s ~/.dotfiles/bin/upload.sh ~/bin/upload.sh;
ln -s ~/.dotfiles/bin/backup.sh ~/bin/backup.sh;
echo "Please logout and log back in to apply environmental scripts or source .bash_profile.";
exit 0;
