#!/bin/bash


PORT="2022"

echo "Servidor de Dragon Magia Abuelita Miedo"

echo "0. ESCUCHAMOS"

DATA=`nc -l $PORT`

if [ "$DATA" != "DMAM" ]
then
	echo "ERROR 1: Cabecera incorrecta"
	echo "KO_HEADER" | nc localhost 2022
	exit 1
fi

echo "2. Cabecera comprobada y respondiendo"
echo "OK_HEADER" | nc localhost 2022
