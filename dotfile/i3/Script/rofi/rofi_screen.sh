#!/usr/bin/env bash

rofi_command="rofi -theme .config/i3/Rofi_colo/3.rasi"

# Options
1single=""
2single=""
extand=""
duplicate=""


# Variable passed to rofi
options="$single\n$dual\n$new"
chosen="$(echo -e "$options" | $rofi_command -dmenu)"
case $chosen in
    $single)
        exec ~/.config/i3/Script/arandr/singlescreen.sh
        ;;
    $dual)
		exec ~/.config/i3/Script/arandr/dualscreen.sh
        ;;
    $new)
        exec arandr
        ;;
esac

