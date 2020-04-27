#!/bin/bash

declare -a programs=(
"sxhkd"
"$HOME/.config/polybar/launch.sh"
)

for program in "${programs[@]}"; do
   if pgrep $program; then
      :
   else
      $program &
   fi
done

