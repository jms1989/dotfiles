#!/bin/bash
echo "Install Custom Samba Config"
cp $NEWUSER/.dotfiles/conf/smb.conf /etc/samba/smb.conf
service samba restart
smbpasswd -a $NEWUSER &&
exit
