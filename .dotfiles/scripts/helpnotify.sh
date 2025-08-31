#!/bin/bash

icon="/home/libor/.dotfiles/icons/help.png"
title="Základní klávesové zkratky:"

notify-send -t 35000 -c help -u critical -i dialog-information "$title" "$(cat ~/.dotfiles/scripts/helpnotify.txt)"
