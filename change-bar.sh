#!/bin/sh

bars="Normal\nVibrant\nUtility"
rofi_theme=$HOME/.config/rofi/change-theme.rasi
chosen=$(printf $bars | rofi -dmenu -i -p "󱇯 " -theme $rofi_theme)

if [[ $chosen =~ "Normal" ]]; then
	theme="normal"
elif [[ $chosen =~ "Vibrant" ]]; then
	theme="vibrant"
elif [[ $chosen =~ "Utility" ]]; then
	theme="utility"
fi

app_path=$HOME/Projects/python/change-bar/main.py

python $app_path $theme
