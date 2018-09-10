#!/bin/bash
echo "Setting up NodeJS...";
curl -sL https://deb.nodesource.com/setup_8.x -o /tmp/nodesource_setup.sh > /dev/null;
sudo bash /tmp/nodesource_setup.sh > /dev/null;
sudo apt-get update > /dev/null;
sudo apt-get install -y nodejs > /dev/null;
exit
