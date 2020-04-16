#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as superuser!"
  exit
fi

rm -rf /var/vm/sleepimage
mkdir /var/vm/sleepimage

pmset -a hibernatemode 0
pmset -a standby 0
pmset -a proximitywake 0
pmset -a disksleep 0
pmset -a displaysleep 5
pmset -a sleep 5
