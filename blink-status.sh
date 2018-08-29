#!/bin/bash
IFS_ORIG=$IFS
panes=$(ls /sys/class/enclosure/)
for pane in $panes ; do
  ls /sys/class/enclosure/$pane | grep Slot >> $pane.txt
  slots=$(cat $pane.txt)
  IFS=$'\n'
  for slot in $slots ; do
    state=$(cat /sys/class/enclosure/$pane/$slot/locate)
    disk=$(ls /sys/class/enclosure/$pane/$slot/device/block 2> /dev/null| grep -vs 'ls: cannot access')
    echo /sys/class/enclosure/$pane/$slot/locate $state $disk
    continue
  done
  rm $pane.txt
done
IFS=$IFS_ORIG
