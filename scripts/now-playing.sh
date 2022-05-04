#!/bin/bash

STATUS=$(curl -su '':$VLC_HTTP_PW http://127.0.0.1:8080/requests/status.xml)

# @TODO: Parse station name
PATH_TITLE='//info[@name="title"]/text()'
VALUE_TITLE=$(echo $STATUS | xmllint --xpath $PATH_TITLE -)
STATION_TITLE=$VALUE_TITLE

if [[ "$VALUE_TITLE" == *"Beat Blender"* ]]; then
	STATION_TITLE="Beat Blender"
elif [[ "$VALUE_TITLE" == *"cliqhop"* ]]; then
	STATION_TITLE="cliqhop"
elif [[ "$VALUE_TITLE" == *"DEF CON"* ]]; then
	STATION_TITLE="DEF CON Radio"
elif [[ "$VALUE_TITLE" == *"Fluid"* ]]; then
	STATION_TITLE="Fluid"
elif [[ "$VALUE_TITLE" == *"Groove Salad Classic"* ]]; then
	STATION_TITLE="Groove Salad Classic"
elif [[ "$VALUE_TITLE" == *"Groove Salad"* ]]; then
	STATION_TITLE="Groove Salad"
elif [[ "$VALUE_TITLE" == *"Lush"* ]]; then
	STATION_TITLE="Lush"
elif [[ "$VALUE_TITLE" == *"Space Station"* ]]; then
	STATION_TITLE="Space Station"
elif [[ "$VALUE_TITLE" == *"SYNPHAERA"* ]]; then
	STATION_TITLE="Synphaera"
elif [[ "$VALUE_TITLE" == *"The Trip"* ]]; then
	STATION_TITLE="The Trip"
fi

PATH_NOW_PLAYING='//info[@name="now_playing"]/text()'
# TODO: Decode value and find a way to avoid printing "XPath set is empty"
VALUE_NOW_PLAYING=$(echo $STATUS | xmllint --xpath $PATH_NOW_PLAYING -)
NOW_PLAYING_TRIMMED=$(echo $VALUE_NOW_PLAYING | sed 's/\(.\{50\}\).*/\1.../')

echo "$NOW_PLAYING_TRIMMED @ $STATION_TITLE"
