#!/bin/sh

normal_background="#24283b"
normal_foreground="#c0caf5"
selected_background="#f7768e"
selected_foreground="#c0caf5"

dmenu_run -i -nb $normal_background \
             -nf $normal_foreground \
             -sb $selected_background \
             -sf $selected_foreground \
             -fn "JetBrainsMono Nerd Font:bold:pixelsize=26"
