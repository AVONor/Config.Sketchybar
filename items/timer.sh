#!/bin/bash

sketchybar --add event reset_timer

timer=(
  script="${PLUGIN_DIR}/reset_timer.sh"
  icon="􀐬"
  icon.padding_left=0
  icon.padding_right=5
  icon.color=$WHITE
  background.drawing=on
  background.color=0x01000000
  background.height=26
  popup.background.drawing=on
  popup.background.border_color=0xffffffff
  popup.background.border_width=2
  popup.background.corner_radius=8
  click_script="sketchybar --set timer popup.drawing=toggle ; sketchybar --trigger reset_timer"
)


stopwatch=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py"
  label="SW Mode"
  background.drawing=off
)


preset1=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 300"
  label="5 min"
  background.drawing=on
  background.color=0x00000000
  background.highlight_color=0x331e1e2e
)

preset2=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 600"
  label="10 min"
  background.drawing=on
  background.color=0x00000000
  background.highlight_color=0x331e1e2e
)

preset3=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 1800"
  label="30 min"
  background.color=0x00000000
  background.highlight_color=0x331e1e2e
)

preset4=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 2400"
  label="40 min"
  background.color=0x00000000
  background.highlight_color=0x331e1e2e
) 

preset5=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 3600"
  label="1 hour"
  background.drawing=on
  background.color=0x00000000
  background.highlight_color=0x331e1e2e
)



sketchybar --add item timer left \
           --set timer "${timer[@]}" \
           --subscribe timer reset_timer \
           --add item timer.stopwatch popup.timer \
           --set timer.stopwatch "${stopwatch[@]}" \
           --add item timer.preset1 popup.timer \
           --set timer.preset1 "${preset1[@]}" \
           --add item timer.preset2 popup.timer \
           --set timer.preset2 "${preset2[@]}" \
           --add item timer.preset3 popup.timer \
           --set timer.preset3 "${preset3[@]}" \
           --add item timer.preset4 popup.timer \
           --set timer.preset4 "${preset4[@]}" \
           --add item timer.preset5 popup.timer \
           --set timer.preset5 "${preset5[@]}"

sketchybar --add bracket timer.popup timer.stopwatch timer.preset1 timer.preset2 timer.preset3 timer.preset4 timer.preset5 \
           --set timer.popup \
                 background.color=0xee1e1e2e \
                 background.border_color=0xffffffff \
                 background.border_width=2 \
                 background.corner_radius=8 \
                 drawing=on