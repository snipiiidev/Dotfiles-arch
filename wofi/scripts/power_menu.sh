#!/bin/bash
option=$(

  echo -e "Turn Off\nRestart\nSuspend\nLogout" |
    wofi --dmenu \
      --style ~/.config/wofi/styles/power.css \
      --conf /dev/null \
      --lines 4 \
      --width 300 \
      --location center \
      --hide-scroll \
      --prompt "" \
      --hide-search
  \--hide-scroll
)

echo "$option"

case "$option" in

"Turn Off ") poweroff ;;
"Restart") reboot ;;
"Suspend") systemctl suspend ;;
"Logout") hyprctl dispatch exit ;;

esac
