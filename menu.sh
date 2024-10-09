#!/bin/bash

# Función para mostrar el menú principal
function menu_principal() {
  clear
  echo "Menú de Módulos de Red y Escaneo"
  echo "1. Escaneo de Puertos"
  echo "2. Monitoreo de Red"
  echo "3. Salir"
}

# Bucle principal del script
while true; do
  menu_principal
  read -p "Selecciona una opción: " opcion
  case $opcion in
    1)
      # Llamar al módulo escaneo_puertos.sh
      source ./escaneo_puertos.sh
      ;;
    2)
      # Llamar al módulo Monitoreo_Red.sh
      source ./Monitoreo_Red.sh
      ;;
    3)
      echo "Saliendo..."
      exit 0
      ;;
    *)
      echo "Opción inválida, intenta de nuevo"
      ;;
  esac
  read -p "Presiona Enter para continuar..."  # Pausa antes de volver al menú
done
