#!/bin/env bash

filepath=$1

[ ! -f "$filepath" ] && exit 0

if ! command -v hyprctl &>/dev/null || ! command -v jq &>/dev/null; then
  if ! command -v notify-send &>/dev/null; then
    exit 0
  fi
  notify-send "GSR" "Replay saved"
  exit 0
fi

current_title=$(hyprctl activewindow -j | jq -r ".title" | tr " " "_" | tr "." "-" | tr "/" "_")

command mv "$filepath" "${filepath%/*}/${current_title}_T-${filepath##*/Replay_}"

if ! command -v notify-send &>/dev/null; then
  exit 0
fi

notify-send "GSR" "Replay from ${current_title} saved"
