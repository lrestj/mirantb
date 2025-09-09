#!/bin/bash

PO="Připojit OneDrive\0icon\x1fms-onedrive"
OO="Odpojit OneDrive\0icon\x1fms-onedrive"
PG="Připojit Google Disk\0icon\x1fgoogle-drive"
OG="Odpojit Google Disk\0icon\x1fgoogle-drive"

selected=$(echo -e "$PO\n$OO\n$PG\n$OG" | fuzzel --minimal-lines -d -p "Úložiště: " )
case $selected in
    "Připojit OneDrive")
        source onedrive.sh
    ;;
    "Odpojit OneDrive")
        source umonedrive.sh
    ;;
    "Připojit Google Disk")
        source googledrive.sh
    ;;
    "Odpojit Google Disk")
        source umgoogledrive.sh
    ;;
    *)
    notify-send -i im-kick-user "Zrušeno uživatelem"
    ;;
esac
