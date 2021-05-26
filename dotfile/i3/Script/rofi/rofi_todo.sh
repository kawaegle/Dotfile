#! /bin/bash

rofi_command="rofi -theme .config/i3/Rofi_colo/4.rasi"
add=""
remove=""
finish=""
show=""

option="$add\n$remove\n$finish\n$show"
choosen=$(echo -e "$option"| $rofi_command -dmenu)
case $choosen in
	$add)
		exec urxvt -title "ToDo manager" -e sh -c "~/.local/bin/ToDo.py add; sleep 2"
		;;
	$remove)
		exec urxvt -title "ToDo manager" -e sh -c "~/.local/bin/ToDo.py remove; sleep 2"
		;;
	$finish)		
		exec urxvt -title "ToDo manager" -e sh -c "~/.local/bin/ToDo.py finish; sleep 2"
		;;
	$show)
		exec urxvt -title "ToDo manager" -e sh -c "~/.local/bin/ToDo.py show; sleep 2"
		;;
esac
