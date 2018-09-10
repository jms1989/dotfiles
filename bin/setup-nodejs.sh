#!/bin/bash
echo "Setting up NodeJS...";
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh > /dev/null;
sudo bash nodesource_setup.sh > /dev/null;
sudo apt update > /dev/null;
sudo apt install -y nodejs > /dev/null;
exit