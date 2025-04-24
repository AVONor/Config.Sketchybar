#!/bin/bash

sketchybar --add event reset_timer

group_background=(
  background.drawing=on
  background.border_color=$WHITE
  background.border_width=1 
  background.height=26
)


timer=(
  script="${PLUGIN_DIR}/reset_timer.sh"
  icon="􀐬"
  icon.padding_left=0
  icon.padding_right=5
  icon.color=$WHITE
  background.drawing=on
  background.color=0x01000000
  background.height=26
  click_script="sketchybar --set timer popup.drawing=toggle ; sketchybar --trigger reset_timer"
)


stopwatch=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py"
  label="SW Mode"
)

preset1=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 180"
  label="3 min"
)

preset2=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 300"
  label="5 min"
)

preset3=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 600"
  label="10 min"
)

preset4=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 1200"
  label="20 min"
)

preset5=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 3600"
  label="1 hour"
)


sketchybar --add item timer left \
             --set timer "${timer[@]}" \
           --subscribe timer reset_timer \
           --add item timer.stopwatch popup.timer \
             --set timer.stopwatch "${group_background[@]}" \
             --set timer.stopwatch "${stopwatch[@]}" \
           --add item timer.preset1 popup.timer \
             --set timer.preset1 "${group_background[@]}" \
             --set timer.preset1 "${preset1[@]}" \
           --add item timer.preset2 popup.timer \
             --set timer.preset2 "${group_background[@]}" \
             --set timer.preset2 "${preset2[@]}" \
           --add item timer.preset3 popup.timer \
             --set timer.preset3 "${group_background[@]}" \
             --set timer.preset3 "${preset3[@]}" \
           --add item timer.preset4 popup.timer \
             --set timer.preset4 "${group_background[@]}" \
             --set timer.preset4 "${preset4[@]}" \
           --add item timer.preset5 popup.timer \
             --set timer.preset5 "${group_background[@]}" \
             --set timer.preset5 "${preset5[@]}"

