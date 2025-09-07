#!/bin/bash

sdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

notify-send -u critical -c nas -i application-menu "Nastavení" "$(cat $sdir/nsubmap.txt)" 
