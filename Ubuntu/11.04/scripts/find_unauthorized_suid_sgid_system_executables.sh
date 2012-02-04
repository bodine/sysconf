#!/bin/sh

find / -xdev \( -perm -04000 -o -perm -02000 \) -type f -ls

