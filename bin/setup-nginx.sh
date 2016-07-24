#!/bin/bash
rm /etc/nginx/sites-available/default;
ln -s /home/michael/.dotfiles/nginx/default /etc/nginx/sites-available/default;
service nginx reload;
cp /home/michael/.dotfiles/nginx/index.html /home/michael/workspace/index.html;
chown michael: /home/michael/workspace/index.html;
exit
