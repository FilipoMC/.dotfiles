#!/usr/bin/env bash

if [ "$(systemctl is-active interception-tools)" = "active" ]; then
  RUNNING=true
else
  RUNNING=false
fi

if [ "$RUNNING" = true ]; then
  state="on"
  class="on"
else
  state="off"
  class="off"
fi

# Output JSON for Waybar
printf '{"text":"%s","class":"%s"}\n' "$state" "$class"
