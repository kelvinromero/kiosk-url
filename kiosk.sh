#!/bin/bash

# Avoids crashed/recovered sessions
# killall chromium-browser

#Check for URL updates
git pull
url=$(cat address)

#Starts kioks
`/usr/bin/chromium-browser --noerrdialogs --disable-session-crashed-bubble --disable-infobars --kiosk $url`
