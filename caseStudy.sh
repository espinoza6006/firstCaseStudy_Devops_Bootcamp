#!/bin/bash

#Estructura de control Switch

#Sintaxis. 
# case $numero in
# 1) 
# linea de codigo
# ;; funciona como el break en java
# 2)
# linea de codigo
# ;;
# 3)
# linea de Codigo
# ;;
# *) funciona como el default en java
# ;;
# esac Para terminar el case switch


opcionUsuario=0


while [ $opcionUsuario -ne 7 ]
do
echo "Menu de opciones / Options Menu "
echo "1. Mostar lista de ficheros del directorio Raiz / Display root directory list content"
echo "2. Mostar lista de ficheros de tu directorio home / Display home directory list content."
echo "3. Mostar espacio libre y usado  de los archivos del sistema / Display free space and available"
echo "4. Mostar el numero de procesos de las unidades disponibles nproc / Display process numbers of the system"
echo "5. Mostarr Direccion IP / Display IP Adress"
echo "6. Mostar compartamiento en terminos de memoria y CPU / Display machine performance memory and cpu usage "
echo "7. Salir / Exit"

echo "Eliga una opción: "
read opcionUsuario

case $opcionUsuario in
1)
echo "*******************************************************"
ls  /
echo "*******************************************************"
;;

2)
echo "*******************************************************"
ls -l $HOME
echo "*******************************************************"
;;

3)
echo "*******************************************************"
df -h
echo "*******************************************************"
;;

4)
echo "*******************************************************"
nproc
echo "*******************************************************"
;;

5)
echo "*******************************************************"
iftop
echo "*******************************************************"
;;

6)
echo "*******************************************************"
sudo su  apt install htop  #me muestra el rendimiento del systema.
htop
echo "*******************************************************"
;;

7)
echo "*******************************************************"
echo "Good bye"
echo "*******************************************************"
;;
*)
echo "*******************************************************"
echo "Número Incorrecto"
echo "*******************************************************"
;;
esac
done
