#!/bin/bash

# Función para buscar un patrón en un archivo
function buscar_patron() {
	local archivo=$1
	local patron=$2

	# Comprueba si el archivo es un archivo regular
	if [ ! -f "$archivo" ]; then
		return
	fi

	# Busca el patrón en el archivo
	grep -n "$patron" "$archivo"

	# Si se encuentra el patrón, imprime el nombre del archivo
	if [ $? -eq 0 ]; then
		echo "$archivo:"
	fi
}

# Función para recorrer un directorio y sus subdirectorios
function recorrer_directorio() {
	local directorio=$1
	local patron=$2

	# Recorre todos los archivos del directorio
	for archivo in "$directorio"/*; do
		if [ -d "$archivo" ]; then
			# Si es un directorio, llama a la función recursivamente
			recorrer_directorio "$archivo" "$patron"
		else
			# Si es un archivo, busca el patrón
			buscar_patron "$archivo" "$patron"
		fi
	done
}

# Directorio a analizar
directorio=$1

# Patrón a buscar
patron=$2

# Si no se ha especificado un directorio, usa el directorio actual
if [ -z "$directorio" ]; then
	directorio="."
fi

# Si no se ha especificado un patrón, usa "pepe"
if [ -z "$patron" ]; then
	patron="pepe"
fi

# Recorre el directorio y busca el patrón
recorrer_directorio "$directorio" "$patron"
