#!/bin/bash
cantidad=$1
for ((i = 0; i < cantidad; i++)); do
	touch "archivo_$i.txt"
	echo "contenido random $i" >"archivo_$i.txt"

done
