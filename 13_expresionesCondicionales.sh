#!/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: @eyurivilc

edad=0
pais=""
rutaArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su país:" pais
read -p "Ingrese la ruta de su archivo:" rutaArchivo

echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño(a)"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi


echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es americana"
elif [ $pais = "PERU" ] || [ $pais = "COLOMBIA" ]; then
    echo "La persona es de latina"
else
    echo "Se desconoce la nacionalidad"
fi



echo -e "\nExpresiones Condicionales con archivos"
if [ -d $rutaArchivo ]; then
    echo "El directorio $rutaArchivo existe"
else
    echo "El directorio $rutaArchivo NO existe"
fi
