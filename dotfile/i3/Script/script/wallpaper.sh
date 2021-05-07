#!/bin/bash

set_single_wall(){
	while true
	do
	feh --bg-scale ~/Wallpaper/wallpaper_$1.jpg
	slepp 200
	done
}

set_multi_wall(){
	while true 
do
	while $($wall == $wall)
	do
		wall=$(shuf -i $1-$2 -n 1)
	done
	heure=$(date +"%M")
	echo $1
	echo $2
	echo $wall
	case "$heure" in
		01|02|03|04|05|06|07|08|09|10|11|12|13|14|15)
			feh --bg-scale ~/Wallpaper/wallpaper_$wall.jpg
			;;
		16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
			feh --bg-scale ~/Wallpaper/wallpaper_$wall.jpg
			;;
		31|32|33|34|35|36|37|38|39|40|41|42|43|44|45)
			feh --bg-scale ~/Wallpaper/wallpaper_$wall.jpg
			;;
		46|47|48|49|50|51|52|53|54|55|56|57|58|59|00)
			feh --bg-scale ~/Wallpaper/wallpaper_$wall.jpg
			;;
		*)
			notify-send -a "Wallpaper manaer" "Error occured" -u critical
			;;
	esac
	sleep 900
done
}

if [[ $1 == "single" ]]; then
	set_single_wall $2
elif [[ $1 == "multi" ]]; then
	wall=$(shuf -i $2-$3 -n 1)
	echo $wall
	set_multi_wall $2 $3
fi
