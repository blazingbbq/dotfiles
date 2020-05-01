#!/bin/sh

theme="Grape"

# Link theme for use by kitty
ln -sfn "${HOME}/.themes/${theme}.conf" "${HOME}/.config/kitty/theme.conf"

# Create polybar color config
polybar_colors="$HOME/.config/polybar/colors.ini"
echo "[color]\n" > $polybar_colors

# Create rofi color config
rofi_colors="$HOME/.config/rofi/colors.rasi"
echo "@import \"common.rasi\"\n* {" > $rofi_colors

while read name color
do
  # Export for bspwm
  export "$name"="$color"
  # Export for polybar
  echo "$name=$color" >> $polybar_colors
  # Export for rofi
  echo "  $name: $color;" | sed -r 's/_/-/g'  >> $rofi_colors
done < "$HOME/.themes/$theme.conf"

# Close rofi config
echo "}" >> $rofi_colors

