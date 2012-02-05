#!/bin/bash

target_dir="`facter lsbdistid`/`facter lsbdistrelease`/root/etc"
m4 local.defs $target_dir/hosts.allow.m4 > $target_dir/hosts.allow

