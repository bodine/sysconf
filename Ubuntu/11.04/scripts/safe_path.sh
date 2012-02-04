#!/bin/sh

echo $PATH | egrep '(^|:)(\.|:|$)'
find `echo $PATH | tr ':' ' '` -type d \
	\( -perm -002 -o -perm -020 \) -ls
