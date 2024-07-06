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

elif [ "$1" == "--help" ]; then
	echo "Dostępne opcje:"
	echo "--logs [liczba_plików] : utworzenie określonej liczby plików logx.txt (domyślnie 100)"
	echo "--date : wyświetla dzisiejszą datę"
fi
