#!/bin/env bash

if pgrep -x udevmon >/dev/null; then
  sudo systemctl stop udevmon
else
  sudo systemctl start udevmon
fi

pkill -RTMIN+9 waybar
