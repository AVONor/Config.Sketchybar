#!/bin/bash

pid=$(ps -A | grep -v 'grep' | grep -v 'sh' | grep ~/.config/sketchybar/plugins/timer.py | cut -d ' ' -f 1)
kill ${pid}

#pkill -f timer.py ##Usar en caso de que ps -A falle 

sketchybar --set timer label=""