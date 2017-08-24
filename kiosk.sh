#!/bin/bash

# Avoids crashed/recovered sessions
# killall chromium-browser

#Check for URL updates
git pull
url=$(cat /home/pi/kiosk-url/address)

#Stops chromium crash messages
# sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/google-chrome/Default/Preferences
# sed -i 's/"exit_type": "Crashed"/"exit_type": "None"/' ~/.config/google-chrome/Default/Preferences


#Starts kioks
`/usr/bin/chromium-browser --kiosk --icognito --disable-session-crashed-bubble $url`
