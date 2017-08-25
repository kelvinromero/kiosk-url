#!/bin/bash
# Configures the system to start the kiosk right after the gnome.


# Desktop file
file="~/.config/autostart/autostartkiosk.desktop"

if [[ ! -f $file ]]; then
    cp autostartkiosk.desktop ~/.config/autostart/
fi
