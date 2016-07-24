#!/bin/bash
rm /etc/nginx/sites-available/default;
ln -s ~/.dotfiles/nginx/default /etc/nginx/sites-available/default;
service nginx reload;
exit
