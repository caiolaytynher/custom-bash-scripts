#!/bin/python

import os
from enum import StrEnum
from pathlib import Path




class Option(StrEnum):
    SHUTDOWN = ""
    REBOOT = ""
    LOGOUT = ""

def get_option()

MAIN_SCREEN_THEME = Path('~/.config/rofi/power-off-screen.rasi')
CONFIRMATION_SCREEN_THEME = Path('~/.config/rofi/yes-or-no.rasi')

def main() -> None:
    option = execute(['a'])
    desktop_session: str = os.environ.get('DESKTOP_SESSION')



option=$(printf $options | rofi -dmenu -theme $main_screen_theme)

if [[ -z $option ]]; then
    exit 1
fi

confirm=$(printf "Yes\nNo" | rofi -dmenu -p "Are you sure?" -theme $confirmation_screen_theme)

if [[ $confirm == "No" ]] || [[ -z $confirm ]]; then
    exit 1
fi

if [[ $DESKTOP_SESSION == "hyprland" ]]; then
    logout_command=/usr/bin/hyprctl dispatch exit
    echo $logout_command
else
    logout_command=qtile cmd-obj -o cmd -f shutdown
fi

case $option in
    "") shutdown now ;;
    "") reboot ;;
    "") 
        case $DESKTOP_SESSION in
            "hyprland") hyprctl dispatch exit ;;
            *) qtile cmd-obj -o cmd -f shutdown ;;
        esac
    ;;
    *) exit 1 ;;
esac

