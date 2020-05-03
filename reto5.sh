#!/bin/bash
# Menú con opciones
# Autor: @eyurivilc

fechahora=$(date +%Y-%m-%d_%H%M%S)
touch prelog.log

option="Eligi la opcion correcta"
result="El resultado va a /dev/null"

echo $option >> prelog.log
echo $result >> prelog.log
echo -e "\nMostar los datos en el archivo .log"
cat prelog.log
##renombra archiv prelog.log con la fechahora
mv prelog.log $fechahora.log
echo -e "\nLista para mostrar el archivo log"
ls -lah | grep *.log
