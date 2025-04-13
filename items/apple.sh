#!bin/bash 

sketchybar    --add item apple.logo left                                                      \
              --set apple.logo icon=􀣺                                                         \
                               icon.font="SF Pro:Black:14.0"                                  \
                               icon.background.drawing=on \
                               icon.border_width=5 \
                               icon.border_color=$WHITE \
                               label.drawing=off                                              \
                               click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                               popup.background.drawing=on                                      \
                               popup.background.border_width=3                                \
                               popup.background.corner_radius=3                                \
                               popup.background.border_color=$WHITE                 \
                                                                                      \
              --add item apple.preferences popup.apple.logo                                   \
              --set apple.preferences icon=􀺽                                                  \
                               label="Ajustes del sistema"                                            \
                               click_script="open -a 'System Preferences';                    
                                             sketchybar -m --set apple.logo popup.drawing=off"\
              --add item apple.activity popup.apple.logo                                      \
              --set apple.activity icon=􀒓                                                     \
                               label="Monitor de actividad"                                               \
                               click_script="open -a 'Activity Monitor';                       
                                             sketchybar -m --set apple.logo popup.drawing=off"\
              --add item apple.lock popup.apple.logo                                          \
              --set apple.lock icon=􀒳                                                         \
                               label="Reposo"                                            \
                               click_script="pmset displaysleepnow;                           
                                             sketchybar -m --set apple.logo popup.drawing=off"