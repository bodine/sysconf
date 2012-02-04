#!/bin/sh

cd /etc
for NAME in `cut -d: -f1 /etc/passwd`
do
	MYUID=`id -u $NAME`
	if [ $MYUID -lt 500 -a $NAME != 'root' ]
	then
		sudo usermod -L -s /bin/false $NAME
	fi
done

