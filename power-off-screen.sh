#!/bin/sh

options="\n\n"
main_screen_theme=$HOME/.config/rofi/power-off-screen.rasi
confirmation_screen_theme=$HOME/.config/rofi/yes-or-no.rasi
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

