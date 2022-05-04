#!/bin/bash
set -e

command=""

if [[ "$1" == "--next-track" ]]; then
	command="pl_next"

elif [[ "$1" == "--prev-track" ]]; then
	command="pl_previous"

elif [[ "$1" == "--toggle-play-pause" ]]; then
	command="pl_pause"

elif [[ "$1" == "--stop" ]]; then
	command="pl_stop"
fi

if [[ "$command" == "" ]]; then
	echo "Unexpected or no command given: $1"
	exit 1
fi

curl -su '':$VLC_HTTP_PW "http://127.0.0.1:8080/requests/status.xml?command=$command"

