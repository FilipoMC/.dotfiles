#!/usr/bin/env bash

STATE_FILE="$HOME/.config/hypr/gammastep_state"
THRESHOLD=0.5 # seconds

if pgrep -x gammastep >/dev/null; then
  RUNNING=true
else
  # Check if state file modified recently (within $THRESHOLD seconds)
  if [ -f "$STATE_FILE" ]; then
    MOD_TIME=$(stat -c %Y "$STATE_FILE")
    NOW=$(date +%s)
    DIFF=$((NOW - MOD_TIME))
    if [ "$DIFF" -le "$THRESHOLD" ]; then
      RUNNING=true
    else
      RUNNING=false
    fi
  else
    RUNNING=false
  fi
fi

if [ "$RUNNING" = true ]; then
  source "$STATE_FILE"
  printf "%dK %.0f%%\n" "$TEMP" "$(awk "BEGIN {print $BRIGHT*100}")"
else
  echo ""
fi
