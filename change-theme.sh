#!/bin/sh

themes="Dracula\nGruvbox\nCatppuccin\nTokyoNight\nEverforest\nKanagawa\nOneDark"
theme_path=$HOME/.config/rofi/change-color-scheme.rasi
chosen=$(printf $themes | rofi -dmenu -i -p " " -theme $theme_path)

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

app_path=$HOME/Projects/python/change-theme/main.py

python $app_path $theme
