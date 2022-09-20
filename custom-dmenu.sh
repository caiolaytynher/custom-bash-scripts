#!/bin/sh

normal_background="#282a36"
normal_foreground="#f8f8f2"
selected_background="#bd93f9"
selected_foreground="#f8f8f2"

dmenu_run -i -nb $normal_background \
             -nf $normal_foreground \
             -sb $selected_background \
             -sf $selected_foreground \
             -fn "JetBrainsMono Nerd Font:bold:pixelsize=26"
