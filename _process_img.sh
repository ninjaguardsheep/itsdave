#!/usr/bin/env bash

if [[ ! -f "$1" ]]; then
	exit 1
fi

convert -scale 360x "$1" tmp.png

convert tmp.png \( -size 360x360 xc:none -fill white -draw "circle 178,178 178,2" \) -compose copy_opacity -composite header.png && rm tmp.png

convert -scale 128x header.png header_preview.png
