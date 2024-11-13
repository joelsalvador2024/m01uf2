#!/bin/bash

PORT="2022"

echo "Clente de Dragon Magia Abuelita Miedo"

echo "1. ENVIO DE CABECERA"

echo "DMM" | nc 127.0.0.1 $PORT

DATA=`nc -l $PORT`

if [ "$DATA" != "OK_HEADER" ]
then
	echo "ERROR 1: El header se envio incorrectamente"
	exit 1
fi
