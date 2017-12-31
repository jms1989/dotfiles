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
ln -s ~/.dotfiles/bin/upload.sh ~/bin/upload.sh;
ln -s ~/.dotfiles/bin/backup.sh ~/bin/backup.sh;
curl https://gist.githubusercontent.com/nl5887/a511f172d3fb3cd0e42d/raw/d2f8a07aca44aa612b6844d8d5e53a05f5da3420/transfer.sh > ~/bin/transfer.sh; chmod +x ~/bin/transfer.sh;
#ln -s ~/.dotfiles/bin/transfer.sh ~/bin/transfer.sh;
echo "Please logout and log back in to apply environmental scripts or source .bash_profile.";
exit 0;
