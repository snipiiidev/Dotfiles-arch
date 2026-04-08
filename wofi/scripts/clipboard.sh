#!/bin/bash

cliphist list | wofi --dmenu \
--style ~/.config/wofi/styles/clipboard.css \
--conf /dev/null | cliphist decode | wl-copy
