#!/bin/sh

awk -F: '($2=="") {print $1}' /etc/shadow

