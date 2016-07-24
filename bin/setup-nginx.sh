#!/bin/bash
rm /etc/nginx/sites-available/default;
ln -s $NEWUSER/.dotfiles/nginx/default /etc/nginx/sites-available/default;
service nginx reload;
su - $username -c "cp $NEWUSER/.dotfiles/nginx/index.html /home/michael/workspace/index.html";
exit
