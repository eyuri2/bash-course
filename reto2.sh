#!/bin/bash
# Programa que solicita información (nombres,apellidos,edad,dirección y números telefónicos)

lag=v
edadRegex='^[0-9]{1,2}$'
direccionRegex="^([a-zA-Z ]+)([0-9 ]+)(#)([a-zA-Z0-9 ]+-[a-zA-Z0-9]+)$"
telefonoRegex="^3[0-9]{9}$"

echo "Programa para ingresar datos personales"

read -p "Ingrese su nombre:" nombres
read -p "Ingrese su apellido:" apellidos
read -p "Ingrese su edad:" edad
read -p "Ingrese su dirección:" direccion
read -p "Ingrese su telefono:" telefono

echo "Datos ingresados"
echo "\n"
echo "Nombres: $nombres"
echo "Apellidos: $apellidos"
echo "Edad: $edad"
echo "Direccion: $direccion"
echo "Telefono: $telefono"

while [ $flag == v ]
do
        if [[ $edad =~ $edadRegex ]]; then
                echo "Edad correcta"
                read -p "Dato valido, continuar..."
        else
                echo "Edad Inválida... Intente nuevamente"
                flag=v
        fi
done

flag=v

while [ $flag == v ]
do
	if [[ $direccion =~ $direccion ]]; then
		echo "Direccion correcta"
		read -p "Dato valido, continuar..."
	else
		echo "Dirección Inválida... Intente nuevamente"
		flag=v
	fi
done

flag=v

while [ $flag == v ]
do
	if [[ $telefono =~ $telefonoRegex ]]; then
		echo "Telefono correcto"
		read -p "Dato valido, continuar..."
	else
		echo "Telefono Inválido... Intente nuevamente"
		flag=v
	fi
done
echo "Datos ingresados"
echo "\n"
echo "Nombres: $nombres"
echo "Apellidos: $apellidos"
echo "Direccion: $direccion"
echo "Edad: $edad"
echo "Telefono: $telefono"
