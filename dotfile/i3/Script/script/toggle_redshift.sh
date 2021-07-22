stat_file=$HOME/.cache/redshift

[[ ! -e $stat_file ]] && printf "ON_OFF = off\nTEMP = 4500\n" > $stat_file

on_off=$(cat $stat_file | grep "ON_OFF"|awk '{ printf($3) }')
temp=$(cat $stat_file | grep "TEMP"| awk '{printf ($3)}')

if [[ $on_off == 'off' ]]
then
	printf "ON_OFF = on\nTEMP = 4500\n" > $stat_file
	redshift -x
else
	printf "ON_OFF = off\nTEMP = 4500\n" > $stat_file
	redshift -O "$temp" -P
fi
	

