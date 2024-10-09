#!/bin/bash

# Definir la función honeypot
honeypot() {
    local port=22          # Puedes cambiar el puerto si lo deseas
    local logfile='honeypot.log'  # Archivo donde se almacenarán los registros

    echo "Iniciando honeypot en el puerto $port. Registros en $logfile..."

    # Bucle infinito para escuchar conexiones en el puerto definido
    while true; do
        # nc escucha en el puerto y redirige todo el tráfico al archivo de registro
        nc -l -p $port >> "$logfile" 2>&1
    done
}

# Llamar a la función honeypot
honeypot
