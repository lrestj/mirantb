#!/bin/bash

PO="Připojit OneDrive"
OO="Odpojit OneDrive"
PG="Připojit Google Disk"
OG="Odpojit Google Disk"
OIC="\0icon\x1fms-onedrive"
GIC="\0icon\x1fgoogle-drive"

selected=$(echo -e "$PO$OIC\n$OO$OIC\n$PG$GIC\n$OG$GIC" | fuzzel --minimal-lines -d -p "Úložiště: " )
case $selected in
    "$PO")
        source onedrive.sh
    ;;
    "$OO")
        source umonedrive.sh
    ;;
    "$PG")
        source googledrive.sh
    ;;
    "$OG")
        source umgoogledrive.sh
    ;;
    *)
    notify-send -i im-kick-user "Zrušeno uživatelem"
    ;;
esac
