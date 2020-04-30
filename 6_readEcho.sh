#!/bin/bash
# Programa para ejemplificar como capturar la información del suaurio utilizando el comando echo, read y $REPLY 
# Autor: Emerson YR - @eyurivilc

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$option , backupName:$backupName"
