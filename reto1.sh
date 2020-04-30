#!/bin/bash

# Programa para validar información ingresada, mediante Expresiones regulares (Regex)
# Autor: @eyurivilc

identificationRegex='^[0-9]{8}$'
countryRegex='^PE|US|CO$'
dateBirthRegex='^19|20[0-9]{2}[0-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar DNI:" identification
read -p "Ingrese País [PE|US|CO]: " country
read -p "Ingrese fecha nacimientp: " dateBirth

# Validación de identificación
if [[ $identification =~ $identificationRegex ]]; then
    echo "El DNI: $identification es una identificación válida"
else
    echo "El DNI: $identification NO es una identificación válida"
fi


# Validación de País
if [[ $country =~ $countryRegex ]]; then
    echo "El país '$country' es válido"
else
    echo "El país '$country' NO es válido"
fi


# Validación de Fecha de nacimiento
if [[ $dateBith =~ $dateBirthRegex ]]; then
    echo "La fecha $dateBirth es válida"
else
    echo "La fecha $dateBirth NO es válida"
fi
