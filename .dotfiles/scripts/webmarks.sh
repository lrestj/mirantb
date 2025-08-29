#!/bin/bash

icon="/home/libor/.dotfiles/icons/brave.png"
title="Otevřít webovou stránku..."
line1="\n G  Gmail"
line2="\n N  NixOS search"
line3="\n P  Přehraj.to"
line4="\n S  Sdílej.cz"
hint="\n\n[kliknutím na mě zavři]"

notify-send -t 35000 -i $icon "$title" "$line1 $line2 $line3 $line4 $hint"

