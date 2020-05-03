#!/bin/bash
# Menú con opciones
# Autor: @eyurivilc

# Procesos actuales
# Memoria disponible
# Espacio en disco
# Información de red
# Variables de entorno configuradas
# Información programa
# Backup información
# Ingrese una opción

opcion=0

while :
do
    # Limpiar la pantalla
    clear
    echo "------------------------------------"
    echo "             MENU PRINCIPAL         "
    echo "------------------------------------"
    echo "1. Procesos actuales"
    echo "2. Memorias Disponible"
    echo "3. Espacio de Disco"
    echo "4. Informacion de Red"
    echo "5. Variables de entorno configuradas"
    echo "6. Informacion del Programa"
    echo "7. Backup informacion"
    echo "8. Salir"

    read -n1 -p "Ingrese una Opcion [1-8]:" opcion

    case $opcion in
        1) echo -e "\nMostrar Procesos"
           ps -aux
           sleep 10
        ;;
        2) echo -e "\nMemoria Disponible"
           free -h --total
           sleep 3
        ;;
        3) echo -e "\nEspacio en disco"
           df -h
           sleep 3
        ;;
        4) echo -e "\nInformacion de red"
           netstat -a | more
           sleep 3
        ;;
        5) echo -e "\nVariables de Entorno"
           printenv
           sleep 3
        ;;
        6) echo -e "\nVersion 1.0 by @skynet"
           sleep 3
        ;;
        7) echo -e "\nBackup Informacion....."
           tar -zcvf backup-scripts.tar.gz /home/emerson/bash-course/*.sh
           sleep 3
        ;;
        8) echo -e "\nSalir del programa"
           exit 0
        ;;
    esac
done
