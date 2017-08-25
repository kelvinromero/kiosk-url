#!/bin/bash

# Avoid crashed/recovered sessions
killall chromium-browser

#Check for (URL and code) updates
git pull
url=$(cat /home/pi/kiosk-url/address)

#Stop chromium crash messages
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences

#Starts kioks
`/usr/bin/chromium-browser --kiosk --no-default-browser-check --no-first-run --disable-infobars --disable-session-crashed-bubble   $url`
