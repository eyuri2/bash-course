#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla
# Autor: Emerson YR - @eyurivilc

option=0
backupName=""
clave=""

echo "Programa de utilidades Postgres"
# Acepta el ingreso de información de solo un carácter
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo de backup: " backupName
echo -e "\n"
echo "Opción: $option , Backup: $backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"


