#!/usr/bin/bash
echo "Setting up apache configs";
rm /etc/apache2/apache2.conf /etc/apache2/sites/available/000-default.conf;
ln -s ~/.dotfiles/conf/apache2/apache2.conf /etc/apache2/apache2.conf;
ln -s ~/.dotfiles/conf/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf;
mkdir ~/workspace;
sudo service apache2 restart;
exit

