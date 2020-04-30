#!/bin/bash
# Programa para ejemplificar como capturar la información del suaurio utilizando el comando read 
# Autor: Emerson YR - @eyurivilc

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo de backup: " backupName

echo "Opción: $option , Backup: $backupName"

