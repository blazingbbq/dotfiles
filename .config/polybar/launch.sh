#!/usr/bin/env sh

# Kill previous polybar
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar config
polybar main -c ~/.config/polybar/config.ini &

