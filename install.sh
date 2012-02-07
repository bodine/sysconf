#!/bin/bash


if ! which puppet
then
	sudo apt-get install puppet
fi

if ! which git
then
	sudo apt-get install git
fi

git clone git://github.com/bodine/sysconf.git

cd sysconf

./mk_local_defs.sh
