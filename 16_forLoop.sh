#!/bin/bash
# Programa para ejemplificar el uso de la iteración for
# Autor: @eyurivilc

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de números"
for num in ${arregloNumeros[*]}
do
    echo "Número: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Emerson" "Lino" "Luz" "Miguel"
do
    echo "Nombres: $nom"
done

echo "Iterar en Archivos"
for fil in *
do
    echo "Nombre archivo: $fil"
done

echo  "Iterar utilizando un comando"
for com in ${ls}
do
    echo "Nombre archivo: $com"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
