#!/bin/sh

normal_background="#1e2127"
normal_foreground="#abb2bf"
selected_background="#e06c75"
selected_foreground="#abb2bf"

dmenu_run -i -nb $normal_background \
             -nf $normal_foreground \
             -sb $selected_background \
             -sf $selected_foreground \
             -fn "JetBrainsMono Nerd Font:bold:pixelsize=26"
