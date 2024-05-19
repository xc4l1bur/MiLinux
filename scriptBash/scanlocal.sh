#!/bin/bash

# Obtener la IP local
ip_local=$(hostname -I | awk '{print $1}')

# Extraer el segmento de red (la parte de la IP antes del último octeto)
segmento_red=$(echo "$ip_local" | cut -d '.' -f 1-3)

# Ejecutar netdiscover en el segmento de red
sudo netdiscover -r "$segmento_red.0/24"
