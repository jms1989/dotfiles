#!/bin/bash
su - root -c "rm /etc/nginx/sites-available/default";
su - root -c "ln -s ~/.dotfiles/nginx/default /etc/nginx/sites-available/default";
su - root -c "service nginx reload";
exit
