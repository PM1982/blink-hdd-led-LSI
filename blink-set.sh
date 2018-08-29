#!/bin/bash
#$1 - disk label $2 = 0-unblink 1-blink
dir=$(echo /sys/class/enclosure/*/*/device/block/$1)
cd "$dir/../../.."
cat locate
echo $2 > locate
cat locate
