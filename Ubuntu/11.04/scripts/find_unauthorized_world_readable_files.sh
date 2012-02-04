#!/bin/sh

find / -xdev -type f \( -perm -0002 -a ! -perm -1000 \) -ls

