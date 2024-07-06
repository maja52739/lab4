#!/bin/bash
if [ "$1" == "--date" ]; then
	date

elif [ "$1" == "--logs" ]; then
	if [[ -n "$2" ]]; then
		num=$2
	else
		num=100
	fi
	for i in $(seq 1 num); do
		filename = "log${i}.txt"
		echo "Nazwa pliku: $filename" > $filename
		echo "Nazwa skryptu: "$0" >> $filename
		echo "Data utworzenia: $(date)" >> $filename
	done
fi
