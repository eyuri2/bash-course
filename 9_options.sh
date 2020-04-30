#!/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parámetro
# Autor: Emerson YR - @eyurivilc


echo "Programa opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opcioes enviadas: $*"
echo -e "\n"
echo "Recuperar valores"

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a opción utilizada";;
-b) echo "-b opción utilizada";;
-c) echo "-c opción utilizada";;
*) echo "$* no es una opción";;
esac
shift
done

