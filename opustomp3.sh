#!/bin/bash

for a in ~/Music/*.opus; do
	ffmpeg -i "$a" -qscale:a 0 "${a[@]/%opus/mp3}"
done
