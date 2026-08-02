#!/usr/bin/env bash

STATE_FILE="$HOME/.local/state/hyprsunset_state"

if pgrep --quiet -x hyprsunset; then
  source "$STATE_FILE"
  printf "%dK %.0f\n" "$TEMP" "$GAMMA"
else
  echo ""
fi
