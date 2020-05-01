#!/bin/bash
# Programa para solicitar valores (1-5) y realizar validaciones.
# Autor: @eyurivilc

opcion="^[0-5]$"
valNumero='^[0-9]*$'
valCaracter='^[a-zA-Z]*$'
valDirectorio='^[a-zA-Z0-9.-_/]*$'

read -p "Ingrese una opción del 1 al 5 : " opcion
echo -e "\n"

case $opcion in
	1) echo -e "\nValidación de un número"
		read -p "Ingrese un número: " numero
		if [[ $numero =~ $valNumero ]]; then
			echo "El número $numero es válido"
		else
			echo "El número $numero NO es válido"
		fi
	;;
	2) echo -e "\nValidación de un caracter"
		read -p "Ingrese una cadena de texto: " caracter
		if [[ $caracter =~ $valCaracter ]]; then
			echo "La cadena $caracter es válida"
		else
			echo "La cadena $caracter NO es válida"
		fi
	;;
	3) echo -e "\nVerificación de un directorio"
		read -p "Ingrese una ruta de directorio valido: " directorio
		if [[ $directorio =~ $valDirectorio ]]; then
			echo "La ruta:  $directorio es correcta"
		else
			echo "La ruta:  $directorio NO existe!"
		fi
	;;
	4) echo -e "\nMi directorio actual"
		rutaActual=`pwd`
		echo "La ruta actual es: $rutaActual"
	;;
	5) echo -e "\nMostrar el directorio del usuario"
		rutaUsuario=`echo $PATH`
		echo "Mostrar la variable de entorno PATH: $rutaUsuario"
	;;
	*) echo -e "\nLa opción no es correcta. :(";;

esac
