#!/bin/bash
sketchybar --add item wifi_status right \
           --set wifi_status update_freq=5 \
                             icon.padding_right=0 \
                             icon.padding_left=0 \
                             script="~/.config/sketchybar/plugins/wifi_status.sh" \
           --subscribe wifi_status wifi_change

#label.drawing=off \
#script="~/.config/sketchybar/plugins/wifi_status.sh" \