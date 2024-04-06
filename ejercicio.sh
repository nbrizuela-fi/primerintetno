#!/bin/bash

function buscar_patron() {
	local archivo=$1
	local patron=$2

	if [ ! -f "$archivo" ]; then
		return
	fi

	grep -n "$patron" "$archivo"

	if [[ $? -eq 0 ]]; then
		echo "$archivo"
	fi
}

function recorrer_directorio() {
	local directorio=$1
	local patron=$2

	for archivo in "$directorio"/*; do
		if [[ -d "$archivo" ]]; then
			recorrer_directorio "$archivo" "$patron"

		else
			buscar_patron "$archivo" "$patron"

		fi
	done
}

directorio=$2
patron=$1

if [[ -z "$directorio" ]]; then
	directorio="."

fi

if [[ -z "$patron" ]]; then
	patron="pepe"

fi

recorrer_directorio "$directorio" "$patron"
