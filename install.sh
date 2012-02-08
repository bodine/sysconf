#!/bin/bash


if ! which puppet
then
	sudo apt-get install puppet
fi

if ! which m4
then
	sudo apt-get install m4
fi

###
# Making local definitions file
#

echo "What's the hostname?"
read hostname

# I can think of about ten better ways of doing this. Owel.
echo "What's the subnet? (No fourth octet: x.x.x.)"
read subnet

echo "What's the owner's name?"
read owner

shopt -u nocasematch

echo "Are you going to connect USB devices to this system?"
read ans
if [[ "$ans" =~ [Yy] ]]
then
	needs_usb=true
else
	needs_usb=false
fi

echo "Does this system have pcmcia interfaces?"
read ans
if [[ "$ans" =~ [Yy] ]]
then
	needs_pcmcia=true
else
	needs_pcmcia=false
fi

shopt -s nocasematch

echo "define(HOSTNAME, $hostname)" > local.defs
echo "define(SUBNET, $subnet)" >> local.defs
echo "define(OWNER, $owner)" >> local.defs
echo "define(BASEDIR, $PWD)" >> local.defs
echo "define(NEEDSUSB, $needs_usb)" >> local.defs
echo "define(NEEDSPCMCIA, $needs_pcmcia)" >> local.defs

###
# Making /etc/issue
#
target_dir="`facter lsbdistid`/`facter lsbdistrelease`/root/etc"
m4 local.defs $target_dir/issue.m4 > $target_dir/issue



###
# Making local manifest
#

m4 local.defs machine.pp.m4 > ${hostname}.pp

sudo puppet apply --modulepath `facter lsbdistid`/`facter lsbdistrelease`/puppet $hostname.pp

