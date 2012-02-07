#!/bin/bash


if ! which puppet
then
	sudo apt-get install puppet
fi

./mk_local_defs.sh
