#!/bin/bash

# hosts_allow_local_only.sh -- makes a hosts.allow file which disallows
# access from all non-local networks. This is good for an internal server 
# such as a file server or backup server. It is bad for an externally
# excessible DMZ server, such as a web or file transfer server.

###
# Config
#

# End Config
###

###
# Functions
#

# End Functions
###

###
# Main
#

# make the hosts.allow file. Use ifconfig as the basis for which networks to
# include.
cp /etc/hosts.allow hosts.allow.orig
cp /etc/hosts.allow hosts.allow.tmp
printf "ALL: localhost" > hosts.allow.tmp
for I in `/sbin/ifconfig | grep "inet addr" | cut -f2 -d: | cut -f1-3 -d"." \
	| grep -v ^127 | sort -n`
do
         printf ", $I." >> hosts.allow.tmp
done 
echo >> hosts.allow.tmp
diff hosts.allow.orig hosts.allow.tmp

# hosts.deny is easy at this point: deny everything not previously explicitly 
# allowed.
cp /etc/hosts.deny hosts.deny.orig
cp /etc/hosts.deny hosts.deny.tmp
echo "ALL: ALL" > hosts.deny.tmp 

if ! diff hosts.deny.orig hosts.deny.tmp
then
	cp hosts.deny.tmp /etc/hosts.deny
else
	echo No changes made to hosts.deny
fi

if ! diff hosts.allow.orig hosts.allow.tmp
then
	cp hosts.allow.tmp /etc/hosts.allow
else
	echo No changes made to hosts.allow
fi


# End Script
###
