# blink-hdd-led-LSI
shell scriptis to blinking LED on HDD cage for locate it

Tested on CentOS 7, LSI SAS-2 SAS2004, Supermicro X9DR3-F

To run use:
```
blink-status.sh :script show current LED status (0 - off, 1 - blinking)  and device label (if exist) 
```
```
blink-set.sh $1 $2 :$1 disk label, $2 = 0-unblink 1-blink
```
