#!/bin/bash

PO="󰏊  Připojit OneDrive"
OO="󰏊  Odpojit OneDrive"
PG="  Připojit Google Disk"
OG="  Odpojit Google Disk"

selected=$(echo -e "$PO\n$OO\n$PG\n$OG" | fuzzel -d -p "Úložiště: " )

 # if [ "$selected" = "$PO" ]; then
 #   source onedrive.sh
 # fi  

 # if [ "$selected" = "$OO" ]; then
 #   source umonedrive.sh
 # fi

 # if [ "$selected" = "$PG" ]; then
 #   source googledrive.sh
 # fi  

 # if [ "$selected" = "$OG" ]; then
 #   source umgoogledrive.sh
 # fi

 case $selected in
     $PO)
         source onedrive.sh
     ;;
     $OO)
         source umonedrive.sh
     ;;
     $PG)
         source googledrive.sh
     ;;
     $OG)
         source umgoogledrive.sh
     ;;
     *)
     notify-send -i im-kick-user "Přerušeno uživatelem"
     ;;
 esac
