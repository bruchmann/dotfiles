#!/usr/bin/env bash

dir="$HOME/dotfiles/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bars
polybar -q top -c "$dir/config.ini" &
polybar -q bottom -c "$dir/config.ini" &
