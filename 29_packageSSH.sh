#!/bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync
# Utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: @eyurivilc

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equpoutilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
echo -e "\nSe procederá a empaquetar la carpeta y transferirla según los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/Users/eyurivilca/Development/ 
