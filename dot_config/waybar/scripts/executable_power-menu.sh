#!/bin/bash

entries="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n󰈆 Logout"

selected=$(echo -e $entries | wofi --dmenu --conf /dev/null --style /dev/null --width 200 --height 250 --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  shutdown)
    systemctl poweroff ;;
  reboot)
    systemctl reboot ;;
  suspend)
    systemctl suspend ;;
  logout)
    hyprctl dispatch exit ;;
esac
