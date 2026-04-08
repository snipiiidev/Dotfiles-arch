#!/bin/bash

option=$(echo -e "Gaming\nNormal\nEco" |
  wofi --dmenu \
    --style ~/.config/wofi/styles/mode.css \
    --conf /dev/null \
    --lines 3 \
    --width 300 \
    --location center \
    --hide-scroll \
    --prompt "" \
    --hide-search)

case $option in
Gaming)
  ~/.config/hypr/scripts/gaming.sh
  ;;
Normal)
  ~/.config/hypr/scripts/normal.sh
  ;;
Eco)
  ~/.config/hypr/scripts/eco.sh
  ;;
esac
