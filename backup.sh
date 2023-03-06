#!/bin/bash
date=`date +"%d"`
fulldate=`date +"%Y-%m-%d"`

if (( $date % 6 == 0 )); then
	if [ ! -e /home/$USER/Backups ] ; then
		mkdir /home/$USER/Backups
	fi
	if [ ! -e /home/$USER/Backups/status.txt ] ; then
		touch /home/$USER/Backups/status.txt
	fi
	
	while IFS= read -r line; do status="$line"; done < /home/$USER/Backups/status.txt
	if [ "$status" != $fulldate ] ; then
		Filename=backup_$fulldate.zip
		zip -r -q /home/$USER/Backups/$Filename /home/$USER/Documents
		sleep 10
		mega-put -q /home/$USER/Backups/$Filename /Backups
		echo $fulldate > /home/$USER/Backups/status.txt
	fi
fi
