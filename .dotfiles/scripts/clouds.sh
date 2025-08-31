#!/bin/bash

PO="󰏊 Přopojit OneDrive"
OO="󰏊 Odpojit OneDrive"
PG=" Přopojit Google Disk"
OG=" Odpojit Google Disk"

selected=$(echo "$PO
$OO
$PG
$OG" | rofi -dmenu -p pokus)

 if [ "$selected" = "$PO" ]; then
   source /home/libor/.dotfiles/scripts/onedrive.sh
 fi  

 if [ "$selected" = "$OO" ]; then
   source /home/libor/.dotfiles/scripts/umonedrive.sh
 fi

 if [ "$selected" = "$PG" ]; then
   source /home/libor/.dotfiles/scripts/googledrive.sh
 fi  

 if [ "$selected" = "$OG" ]; then
   source /home/libor/.dotfiles/scripts/umgoogledrive.sh
 fi

