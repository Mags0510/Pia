# Funcion para mostrar el menu
function menu() {
  clear
  echo "Menú de Monitoreo de Red"
  echo "1. Mostrar puertos abiertos en el host local"
  echo "2. Verificar conectividad a hosts"
  echo "3. Detectar dispositivos y conexiones de red con nmcli"
  echo "4. Salir"
  read -p "Selecciona una opcion: " opcion
}


# Función para mostrar puertos abiertos en el host local
#-t muestra conexiones TCP, -u muestra UDP, -l muestra los sockets que se escuchan, -n muestra las direcciones y números de puerto en formato numérico

function Local_Ports() {
  echo "Puertos abiertos en el host local:"
  netstat -tuln
}


# Función para verificar conectividad a hosts
function Connectivity() {
  read -p "Ingrese una lista de hosts separados por comas: " hosts
  for host in $(echo $hosts | tr "," "\n"); do
    echo "Verificando conectividad con $host..."
    ping -c 4 $host
    echo ""
  done
}


# Función para detectar dispositivos y conexiones de red usando nmcli
function New_Devices() {
  echo "Conexiones activas y dispositivos de red:"
  nmcli device status
  
  echo ""
  echo "Lista de dispositivos WiFi detectados (si aplica):"
  nmcli dev wifi list
}


# Bucle principal del script
while true; do
  menu
  case $opcion in
    1)
      Local_Ports
      ;;
    2)
      Connectivity
      ;;
    3)
      New_Devices
      ;;
    4)
      echo "Saliendo..."
      return
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac
  read -p "Presiona Enter para continuar..." # Pausa antes de volver al menú
done
