#!/bin/bash

# Avoids crashed/recovered sessions
# killall chromium-browser

#Check for URL updates
git pull
url=$(cat /home/pi/kiosk-url/address)

#Starts kioks
`/usr/bin/chromium-browser --icognito --kiosk $url`
