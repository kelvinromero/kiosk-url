#!/bin/bash

#Gets URL
url=`curl https://raw.githubusercontent.com/KelvinRomero/kiosk-url/master/address`

#Starts kioks
`/usr/bin/chromium-browser --noerrdialogs --disable-session-crashed-bubble --disable-infobars --kiosk $url`

