#!/bin/bash

options="󰤄 Suspend\n󰜉 Restart\n󰐥 Shutdown"

chosen=$(echo -e "$options" | wofi --dmenu --prompt "Power")

case $chosen in
    *Shutdown)
        systemctl poweroff
        ;;
    *Restart)
        systemctl reboot
        ;;
    *Suspend)
        
      systemctl suspend
        ;;

      esac

