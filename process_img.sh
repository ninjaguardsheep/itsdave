#!/usr/bin/env bash

if [[ -f "$1" ]]

convert header.png \( -size 360x360 xc:none -fill white -draw "circle 178,178 178,2" \) -compose copy_opacity -composite header_r.png
