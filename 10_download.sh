11_ifElse.sh                                                                                        0000764 0001750 0001750 00000000745 13653571170 012533  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9): " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cúal es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no puede sufragar"
else
    echo "La persona puede sufragar"
fi
                           11_ifElseIfElse.sh                                                                                  0000764 0001750 0001750 00000000605 13653571170 013616  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else if, else
# Autor: @eyurivilc

edad=0

echo "Ejemplo Sentencia If -else"
read -p "Indique cúal es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi
                                                                                                                           12_ifAnidados.sh                                                                                    0000764 0001750 0001750 00000001103 13653571170 013353  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Autor: @eyurivilc

notaClase=0
continua=""

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Si va a continuar estudiando en el siguiente nivel (s/n): " continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por estudiar con nosotros, mucha suerte!!!"
    fi
else
    echo "El alumno reprueba la materia"
fi

                                                                                                                                                                                                                                                                                                                                                                                                                                                             13_expresionesCondicionales.sh                                                                      0000764 0001750 0001750 00000001660 13653571170 016362  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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
                                                                                14_case.sh                                                                                          0000764 0001750 0001750 00000000625 13653571170 012237  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: @eyurivilc

opcion=""

echo "Ejemplo Sentencia case"
read -p "Ingrese una opción de la A -Z : " opcion
echo -e "\n"

case $opcion in
	"A") echo -e "\nOperación Guardar Archivo";;
	"B") echo -e "\nOperación Eliminar Archivo";;
	[C-E]) echo -e "\nNo está implementada la operación";;
	*) echo -e "\nOpción incorrecta"
esac
                                                                                                           15.arreglos.sh                                                                                      0000764 0001750 0001750 00000001766 13653571170 013071  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la arreglos
# Autor: @eyurivilc

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Emerson, Lino, Luz, Miguel)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

# Imprimir el tamaño de los arreglos
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos: ${#arregloRangos[*]}"

# Imprimir la posición 2 del arreglo de números, cadenas y rango
echo "Posición 3 Arreglo de Números: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

# Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Tamaño arreglo de números: ${#arregloNumeros[*]}"
          16_forLoop.sh                                                                                       0000764 0001750 0001750 00000001147 13653571170 012746  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                         17_whileLoop.sh                                                                                     0000764 0001750 0001750 00000000305 13653571170 013264  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de la iteración while
# Autor: @eyurivilc

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero+1))
done
                                                                                                                                                                                                                                                                                                                           18_aninados.sh                                                                                      0000764 0001750 0001750 00000000340 13653571170 013116  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: @eyurivilc

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done
                                                                                                                                                                                                                                                                                                19_breakContinue.sh                                                                                 0000764 0001750 0001750 00000000602 13653571170 014115  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: @eyurivilc

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [  $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done
                                                                                                                              1_utilityPostgres.sh                                                                                0000764 0001750 0001750 00000000210 13653571170 014460  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para realizar algunar operaciones utilitarios de Postgres

echo "Hola bienvenido al curso de programación bash"
                                                                                                                                                                                                                                                                                                                                                                                        20_menuOpciones.sh                                                                                  0000764 0001750 0001750 00000002236 13653571170 013765  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: @eyurivilc

opcion=0

while :
do
    # Limpiar la pantalla
    clear
    # Desplazar el menú de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "              MENÚ PRINCIPAL             "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    # Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    # Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalar postgres......."
	    sleep 3
	    ;;
        2)
            echo -e "\nDesinstalar postgres......."
	    sleep 3
	    ;;
        3)
            echo -e "\nSacar respaldo......."
	    sleep 3
	    ;;
        4)
            echo -e "\nRestaurar respaldo......."
	    sleep 3
	    ;;
        5)
            echo -e "\nSalir del Programa"
	    exit 0
	    ;;
    esac
done
                                                                                                                                                                                                                                                                                                                                                                  21_archivosDirectorios.sh                                                                           0000764 0001750 0001750 00000000546 13653571170 015351  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: @eyurivilc

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 == "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción: $1"
fi
                                                                                                                                                          22_writefile.sh                                                                                     0000764 0001750 0001750 00000000333 13653571170 013311  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: @eyurivilc

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

# Adición multilínea
cat <<EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                                                                     23_readFile.sh                                                                                      0000764 0001750 0001750 00000000674 13653571170 013043  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como se lee un archivo
# Autor: @eyurivilc

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
                                                                    24_fileOperations.sh                                                                                0000764 0001750 0001750 00000000660 13653571170 014307  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: @eyurivilc

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME


echo -e "\nEliminar los archivos .txt"
rm *.txt



                                                                                25_tar.sh                                                                                           0000764 0001750 0001750 00000000300 13653573360 012105  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: @eyurivilc

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
                                                                                                                                                                                                                                                                                                                                26_gzip.sh                                                                                          0000764 0001750 0001750 00000000553 13653573514 012304  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: @eyurivilc

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh
                                                                                                                                                     27_pbzip2.sh                                                                                        0000764 0001750 0001750 00000000467 13653573674 012555  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: @eyurivilc

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                                         2_variables.sh                                                                                      0000764 0001750 0001750 00000000455 13653571170 013212  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para revisar la declaración de variables

opcion=0
nombre=Emerson

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demás procesos
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                   2_variables_2.sh                                                                                    0000764 0001750 0001750 00000000174 13653571170 013431  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para revisar la declaración de variables

echo "Opción nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                    3_tipoOperadores.sh                                                                                 0000764 0001750 0001750 00000001644 13653571170 014243  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Emerson YR - emerson@yr.com

numA=10
numB=4

echo "Operadores Aritméticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relacionales"
echo "Números: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A >= B =" $((numA >= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo "Operadores Asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A += B =" $((numA += numB))
echo "Restar A -= B =" $((numA -= numB))
echo "Multiplicar A *= B =" $((numA *= numB))
echo "Dividir A /= B =" $((numA /= numB))
echo "Residuo A %= B =" $((numA %= numB))
                                                                                            4_argumentos.sh                                                                                     0000764 0001750 0001750 00000000412 13653571170 013421  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es : $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados: $#"
echo "Los parámetros enviados son: $*"
                                                                                                                                                                                                                                                      5_substitutionCommand.sh                                                                            0000764 0001750 0001750 00000000514 13653571170 015314  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilización
# Autor: Emerson YR - emerson@yr.com


ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del Kernel: $infoKernel"

                                                                                                                                                                                    6_readEcho.sh                                                                                       0000764 0001750 0001750 00000000616 13653571170 012757  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como capturar la información del suaurio utilizando el comando echo, read y $REPLY 
# Autor: Emerson YR - @eyurivilc

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$option , backupName:$backupName"
                                                                                                                  7_read.sh                                                                                           0000764 0001750 0001750 00000000550 13653571170 012156  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como capturar la información del suaurio utilizando el comando read 
# Autor: Emerson YR - @eyurivilc

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo de backup: " backupName

echo "Opción: $option , Backup: $backupName"

                                                                                                                                                        8_readValidate.sh                                                                                   0000764 0001750 0001750 00000000755 13653571170 013640  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla
# Autor: Emerson YR - @eyurivilc

option=0
backupName=""
clave=""

echo "Programa de utilidades Postgres"
# Acepta el ingreso de información de solo un carácter
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo de backup: " backupName
echo -e "\n"
echo "Opción: $option , Backup: $backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"


                   9_options.sh                                                                                        0000764 0001750 0001750 00000000725 13653571170 012744  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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

                                           reto1.sh                                                                                            0000764 0001750 0001750 00000001675 13653571170 012060  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash

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
                                                                   reto2.sh                                                                                            0000764 0001750 0001750 00000002747 13653571170 012062  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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
                         reto3.sh                                                                                            0000764 0001750 0001750 00000002413 13653571170 012051  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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
                                                                                                                                                                                                                                                     reto4.sh                                                                                            0000764 0001750 0001750 00000003040 13653571170 012047  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                reto5.sh                                                                                            0000764 0001750 0001750 00000000666 13653571170 012063  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
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
                                                                          utilityHost.sh                                                                                      0000764 0001750 0001750 00000000301 13653571170 013350  0                                                                                                    ustar   platzi                          platzi                                                                                                                                                                                                                 #!/bin/bash
# Programa para declarar dos variables (option y result)
option="Primera variable"
result="Segunda variable"

echo "Option: $option y Resutt: $result"
sáb 02 may 2020 23:06:55 -05
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               