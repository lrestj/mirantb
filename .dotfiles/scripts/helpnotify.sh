#!/bin/bash

icon="/home/libor/.dotfiles/icons/help.png"
title="Nápověda klávesové zkratky:"

notify-send -t 35000 -c help -u critical -i $icon "$title" "$(cat ~/.dotfiles/scripts/helpnotify.txt)"
