#!/bin/bash

# Cria arquivo
file="~/.config/autostart/autostartkiosk.desktop"

if [[ ! -f $file ]]; then
    cp autostartkiosk.desktop ~/.config/autostart/
fi
