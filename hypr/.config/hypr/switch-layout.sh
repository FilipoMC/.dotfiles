#!/bin/bash

# Get all keyboard device names
keyboards=$(hyprctl devices -j | jq -r '.keyboards[].name')

for kb in $keyboards; do
  hyprctl switchxkblayout "$kb" next
done

pkill -RTMIN+8 waybar
