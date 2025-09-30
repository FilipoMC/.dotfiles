#!/bin/bash

# Get the first connected keyboard name
keyboard="razer-blackshark-v2-pro-2.4-consumer-control"

# Get the active keymap for that keyboard
layout=$(hyprctl devices -j | jq -r --arg kb "$keyboard" '.keyboards[] | select(.name == $kb) | .active_keymap')

# Determine short code and class based on layout name
case "$layout" in
*Polish*)
  code="PL"
  class="pl"
  ;;
*Russian*)
  code="RU"
  class="ru"
  ;;
*)
  code="$layout"
  class="unknown"
  ;;
esac

# Output JSON for Waybar
printf '{"text":"%s","class":"%s"}\n' "$code" "$class"
