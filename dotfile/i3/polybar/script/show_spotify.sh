#! /bin/bash

status=$(playerctl --player=spotify status)
if [[ $status == "Paused" ]]; then
  echo ""
else
  echo ""
fi
