#!/bin/bash
# Menú con opciones
# Autor: @eyurivilc

if [[ -d"./logs" ]]; then
    echo "El directorio de logs ya existe, no voy a crear otro"
else
    echo "El directorio de logs no existe, voy a crearlo"
    mkdir -m 755 logs
fi


opcion=0
while :
do
    #Limpiar pantalla
    clear
    #Imprimir menu
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              MENÚ PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desintalar Postgres"
    echo "3. Sacar un registro"
    echo "4. Restar regsitro"
    echo "5. Salir"
    echo "6. Morirá"
    echo "7. Realizar backup y enviar por SSH"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opcion [1-7]" opcion

    #Validar la opcion ingresada
    case $opcion in
    1)
        cadena="\nInstalar Postgres.......\n"
        echo -e "$cadena"
        fecha=`date +%Y%m%d%H%M%S`
        logName="./logs/log${fecha}.log"
        echo -e "$cadena" >> $logName
        sleep 3;;
    2)
        cadena="\nDesintalar Postgres....\n"
        echo -e "$cadena"
        fecha=`date +%Y%m%d%H%M%S`
        logName="./logs/log${fecha}.log"
        echo -e "$cadena" >> $logName
        sleep 3;;
    3)
        cadena="\nSacar un registro.....\n"
        echo -e "$cadena"
        fecha=`date +%Y%m%d%H%M%S`
        logName="./logs/log${fecha}.log"
        echo -e "$cadena" >> $logName
        sleep 3;;
    4)
        cadena="\nRestaurar un registro.\n"
        echo -e "$cadena"
        fecha=`date +%Y%m%d%H%M%S`
        logName="./logs/log${fecha}.log"
        echo -e "$cadena" >> $logName
        sleep 3;;
    5)
        cadena="Salida del programa\n"
        echo -e "$cadena"
        fecha=`date +%Y%m%d%H%M%S`
        logName="./logs/log${fecha}.log"
        echo -e "$cadena" >> $logName
        break;;

    6)
        cadena="Se Procede\n"
        echo -e "$cadena"
        fecha=`date +%Y%m%d%H%M%S`
        logName="./logs/log${fecha}.log"
        echo -e "$cadena" >> $logName
        break;;
     7)
        tar -cvf backupEjecutables.tar ./*.sh
        zip -e backupEjecutables.tar.zip backupEjecutables.tar
        rsync -avz backupEjecutables.tar.zip MiUsuario@MiIP:${HOME}/recibosRSYNC
        rm backupEjecutables.tar.zip
        echo "Informacion enviada."
        break
        ;;
    esac
done
