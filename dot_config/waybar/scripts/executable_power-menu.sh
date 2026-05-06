#!/bin/bash

entries="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n󰈆 Logout"

selected=$(echo -e $entries | wofi --dmenu | awk '{print tolower($2)}')

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
