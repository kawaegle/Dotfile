#!/usr/bin/env bash

rofi_command="rofi -theme .config/i3/Rofi_colo/5.rasi"
uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
lock=""
logout=""
exit=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$logout\n$exit"
chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
		i3lock-fancy-multimonitor -p -b=50
		;;
    $logout)
        i3-msg exit
        ;;
    $exit)
        exit
        ;;
esac

