#!/bin/bash
echo "Install Custom Samba Config"
cp $NEWUSER/.dotfiles/conf/smb.conf /etc/samba/smb.conf
service samba restart
(echo newpassword; echo confirmNewPassword) | smbpasswd -a -s $NEWUSER
exit
