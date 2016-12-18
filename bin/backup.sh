#!/bin/bash
DATE=`date +%Y%m%d_%H%M`;
FILE=$1-$DATE.tgz;
tar -pczf $FILE $1;
if [ -f $FILE ]; then
  echo 'Backup Created';
  else
  echo 'Backup Failed';
fi
exit;
