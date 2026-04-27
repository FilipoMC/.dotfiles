#!/bin/env bash

! command -v gpu-screen-recorder && exit 0

output_dir=~/Videos/gpu-screen-rec/

mkdir -p "$output_dir"

gpu-screen-recorder -r 240 \
  -w screen -a default_output \
  -bm vbr -q medium \
  -fm vfr -f 24 \
  -k hevc \
  -s 2580x1080 \
  -c mp4 -o "$output_dir" \
  -sc ~/.config/gsr/on_clip.sh \
  -fallback-cpu-encoding yes \
  -replay-storage disk

# -
# const bitrate, 6mbps
# const fps, 24
# codec
# downscaling
# output file
# notif, rename output file
# -
# -
