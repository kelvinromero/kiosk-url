#!/bin/bash

declare -a  hosts=( "10.255.8.164" )

# Variables
pass="raspberry"
action="killall chromium-browser ; cd /home/pi/kiosk-url/ && DISPLAY=:0 nohup ./kiosk.sh"

# Log cleaning
rm log err

# Updating berries and logging
for host in "${hosts[@]}"
do
  printf "Atualizando Rasperry $host\n"
  printf "\nHost: $host \n" >> log
  printf "\nHost: $host \n" >> err
  `sshpass -p $pass ssh pi@$host $action >>log 2>>err &`
  sleep 25 #Important to keep logs organized
done
