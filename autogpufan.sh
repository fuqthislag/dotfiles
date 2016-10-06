#!/usr/bin/env bash

interval=5
my_tmpdir=$(mktemp -d)
trap 'rm -rf "$my_tmpdir"' 0
mkfifo "$my_tmpdir/f"
while true; do
  current_temp=$(nvidia-settings -t -q [GPU:0]/GPUCoreTemp)
  speed=0
  if [[ "$current_temp" -ge "40" ]]; then
    speed=$current_temp
    if [[ "$current_temp" -ge "50" ]]; then
      speed=$((current_temp + 5))
      if [[ "$current_temp" -ge "60" ]]; then
        speed=$((current_temp + 12))
        if [[ "$current_temp" -ge "70" ]]; then
          speed=$((current_temp + 25))
          if [[ "$speed" -ge "100" ]]; then
            speed=100
          fi
        fi
      fi
    fi
  fi
  echo "GPUCoreTemp=$current_temp GPUTargetFanSpeed=$speed"
  eval "nvidia-settings -t -a [GPU:0]/GPUFanControlState=1 -a [FAN:0]/GPUTargetFanSpeed=$speed"
  read -t "$interval" <>"$my_tmpdir/f"
done
