#!/bin/bash

icon="/home/libor/.dotfiles/icons/brave.png"
title="Otevřít webovou stránku..."
line1="\n G  Gmail"
line2="\n N  NixOS search"
line3="\n P  Přehraj.to"
line4="\n S  Sdílej.cz"
line5="\n T  Titulky.cz"
line6="\n F  Nerd Fonts"
hint="\n\n[  CapsLk zavřít ]"

notify-send -t 25000 -i $icon "$title" "$line1 $line2 $line3 $line4 $line5 $line6 $hint"
