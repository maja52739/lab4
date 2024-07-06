#!/bin/bash
if [ "$1" == "--date" || "$1" == "-d" ]; then
	date

elif [ "$1" == "--logs" || "$1" == "-l" ]; then
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

elif [ "$1" == "--help" || "$1" == "-h" ]; then
	echo "Dostępne opcje:"
	echo "--logs (-l) [liczba_plików] : utworzenie określonej liczby plików logx.txt (domyślnie 100)"
	echo "--date (-d) : wyświetla dzisiejszą datę"
	echo "--help (-h) : wyświetla pomoc"

elif [ "$1" == "--init" ]; then
	clone_dir=$(pwd)/repo
	git clone https://github.com/maja52739/lab4.git "$clone_dir"
	export PATH="$clone_dir:$PATH"
fi
