#!/bin/bash
echo -n "NodeJS "
nodejs --version || echo "is not installed"
ruby --version || echo "Ruby is not installed"
echo -n "NPM "
npm --version || echo "is not installed"
echo -n "Gem "
gem --version || echo "is not installed"
nginx -v || echo "Nginx is not installed"
git --version || echo "Git is not installed"
exit

