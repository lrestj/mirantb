#!/bin/bash

status=$(swaymsg -t get_inputs | jq -r ".[] | select(.type == \"touchpad\").libinput.send_events")

case $status in
    enabled)
        notify-send -i touchpad -t 1000 "Touchpad aktivní"
    ;;
    disabled)
        notify-send -i touchpad -t 1000 "Touchpad OFF"
    ;;
    *) exit
esac
