#!/bin/bash

# Cargar los módulos
source ./escaneo_puertos.sh
source ./Monitoreo_Red.sh
source ./inside_nano.sh

# Función para mostrar el menú principal
function menu_principal() {
  clear
  echo "Menú de Módulos de Red y Escaneo"
  echo "1. Escaneo de Puertos"
  echo "2. Monitoreo de Red"
  echo "3. Herramientas Inside Nano"
  echo "4. Salir"
  read -p "Selecciona una opción: " opcion
}

# Bucle principal del script
while true; do
  menu_principal
  read -p "Selecciona una opción: " opcion
  case $opcion in
    1)
      # Llamar a la función principal del módulo escaneo_puertos.sh
      escaneo_puertos
      ;;
    2)
      # Llamar a la función principal del módulo Monitoreo_Red.sh
      monitoreo_red
      ;;
    3)
      # Llamar a la función principal del módulo inside_nano.sh
      inside_nano
      ;;
    4)
      echo "Saliendo..."
      exit 0
      ;;
    *)
      echo "Opción inválida, intenta de nuevo"
      ;;
  esac
  read -p "Presiona Enter para continuar..."  # Pausa antes de volver al menú
done
