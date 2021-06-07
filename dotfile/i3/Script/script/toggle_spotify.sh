#! /bin/bash

status=$(playerctl --player=spotify status)
if [[ $status == "Paused" ]]; then
  playerctl --player=spotify play
  echo ""
else
  playerctl --player=spotify pause
  echo ""
fi
