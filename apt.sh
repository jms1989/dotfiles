#!/bin/bash
#
# Install APT Source Files
#
# A Script to copy custom apt list files to the host
#
######
#
# Author: Michael SanAngelo (msanangelo@gmail.com)
# (work in progress)
######

dest="/etc/apt"
source=".dotfiles/conf/apt"
#arch=$(/usr/bin/dpkg --print-architecture)
distro=$(lsb_release -r -s)
mirror="lstn.net"

sudo cp "$HOME"/"$source"/sources.list_"$distro"_"$mirror".txt "$dest";
sudo apt update;

#ls "$HOME"/"$source"/sources.list_"$distro"_"$mirror".txt
exit
