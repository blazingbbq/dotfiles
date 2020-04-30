#!/bin/sh

theme="Grape"

# Link theme for use by kitty
ln -sfn "${HOME}/.themes/${theme}.conf" "${HOME}/.config/kitty/theme.conf"

# Create polybar color config
polybar_colors="$HOME/.config/polybar/colors.ini"
echo "[color]\n" > $polybar_colors

while read name color
do
  # Export for bspwm
  export "$name"="$color"
  # Export for polybar
  echo "$name=$color" >> $polybar_colors
done < "$HOME/.themes/$theme.conf"

