#!/bin/bash

reg1="([0-9]+)"
reg2="pwd=(.+)"
pwd1=""


#notify-send $1
#xdg-open $1

if [[ $1 =~ $reg1 ]]; then
  meetting=${BASH_REMATCH[1]}
fi
if [[ $1 =~ $reg2 ]]; then
  pwd1="&pwd=${BASH_REMATCH[1]}"
fi
if [[ $pwd1 == "" && $meetting == "3400892921" ]]; then
  pwd1="&pwd=111111"
fi

mimeo "zoommtg://tinkoff.zoom.us/join?confno=$meetting&zc=0$pwd1"
