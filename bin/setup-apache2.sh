#!/bin/bash
echo "Setting up apache configs";
sudo rm /etc/apache2/apache2.conf /etc/apache2/sites/available/000-default.conf;
sudo ln -s ~/.dotfiles/conf/apache2/apache2.conf /etc/apache2/apache2.conf;
sudo ln -s ~/.dotfiles/conf/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf;
mkdir ~/workspace;
sudo service apache2 restart;
exit

