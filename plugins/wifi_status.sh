
#!/bin/bash


# Nombre del ítem en SketchyBar
ITEM_NAME="wifi_status"

# Verificar conexión a Internet
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null 2>&1; then
    ICON="􀙇"  # Icono de WiFi conectado
else
    ICON="􀙈"  # Icono de WiFi desconectado
fi

# Actualizar en SketchyBar (sin label)
sketchybar --set $ITEM_NAME icon="$ICON" label.drawing=off
