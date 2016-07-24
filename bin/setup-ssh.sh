#!/bin/bash
echo "Install Custom SSHD Config"
cp $NEWUSER/.dotfiles/conf/sshd_config /etc/ssh/sshd_config
service sshd restart
exit
