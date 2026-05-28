#!/usr/bin/env bash
# Simple manual control for temperature & brightness using gammastep

STATE_FILE="$HOME/.config/hypr/gammastep_state"
TEMP=4500  # default color temperature
BRIGHT=1.0 # default brightness

# Load current state if exists
[ -f "$STATE_FILE" ] && source "$STATE_FILE"

case "$1" in
temp_up)
  TEMP=$((TEMP + 100))
  ;;
temp_down)
  TEMP=$((TEMP - 100))
  ;;
bright_up)
  BRIGHT=$(awk "BEGIN {print ($BRIGHT + 0.05 < 1 ? $BRIGHT + 0.05 : 1)}")
  ;;
bright_down)
  BRIGHT=$(awk "BEGIN {print ($BRIGHT - 0.05 > 0 ? $BRIGHT - 0.05 : 0)}")
  ;;
reset)
  TEMP=6500
  BRIGHT=1.0
  ;;
esac

# Save state
echo "TEMP=$TEMP" >"$STATE_FILE"
echo "BRIGHT=$BRIGHT" >>"$STATE_FILE"

# Apply changes instantly
pkill gammastep
pkill -RTMIN+7 waybar
if [ "$1" = "off" ]; then
  exit
fi
gammastep -m wayland -O "$TEMP" -b "$BRIGHT" &
