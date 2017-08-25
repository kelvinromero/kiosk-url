#!/bin/bash
# Configures the system to start the kiosk right after the gnome.

# Only root can run the script
if [[ $EUID -ne 0 ]]; then
   printf "Execute esse Script como root:\n$ sudo su\n\n" 1>&2
   exit 1
fi

# Desktop file
file="/home/pi/.config/autostart/autostartkiosk.desktop"

if [[ ! -f $file ]]; then
    cp autostartkiosk.desktop /home/pi/.config/autostart/
    chown pi:pi /home/pi/.config/autostart/autostartkiosk.desktop
fi

# Rotate display
rotated=$(cat /boot/config.txt | grep display_rotate=3)
if [ -z "$rotated" ]; then
  echo "display_rotate=3" >> /boot/config.txt
fi
