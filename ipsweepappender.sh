#!/bin/bash

for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" | sudo tee -a iplist.txt &
done

for LINE in $(cat iplist.txt); do
        grep -A1 ${LINE} iplist.txt
        if [ $? -eq 0 ]
        then
		sed -i '/${LINE}/D' ./iplist.txt
        fi
done

