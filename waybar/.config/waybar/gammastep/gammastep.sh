#!/bin/bash

temperature=$(<~/.config/waybar/gammastep/gammastep_temperature)
oldpid=$(<~/.config/waybar/gammastep/gammastep_pid)
temperature=$((temperature + $1))

if [ $temperature -gt 6500 ]; then
  temperature=6500
elif [ $temperature -lt 3000 ]; then
  temperature=3000
else
  echo $temperature >/PATH/TO/REPOSITORY/gammastep_temperature
  exec gammastep -Pr -O $temperature &
  pid=$!
  echo $pid >/PATH/TO/REPOSITORY/gammastep_pid
  kill $oldpid
fi
