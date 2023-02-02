#!/bin/sh

themes="Dracula\nGruvbox\nCatppuccin\nTokyoNight\nEverforest\nKanagawa\nOneDark"
rofi_theme=$HOME/.config/rofi/change-theme.rasi
chosen=$(printf $themes | rofi -dmenu -i -p " " -theme $rofi_theme)

if [[ $chosen =~ "Dracula" ]]; then
	theme="dracula"
elif [[ $chosen =~ "Gruvbox" ]]; then
	theme="gruvbox"
elif [[ $chosen =~ "Catppuccin" ]]; then
	theme="catppuccin"
elif [[ $chosen =~ "TokyoNight" ]]; then
	theme="tokyonight"
elif [[ $chosen =~ "Everforest" ]]; then
	theme="everforest"
elif [[ $chosen =~ "Kanagawa" ]]; then
	theme="kanagawa"
elif [[ $chosen =~ "OneDark" ]]; then
	theme="onedark"
fi

app_path=$HOME/Projects/python/change-theme/change_theme.py

python $app_path $theme
