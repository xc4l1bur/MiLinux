#!/bin/bash

# Obtener la IP local
ip_local=$(hostname -I | awk '{print $1}')

# Extraer el segmento de red (la parte de la IP antes del último octeto)
segmento_red=$(echo "$ip_local" | cut -d '.' -f 1-3)

# Escanear el segmento de red con nmap y mostrar solo las IP activas
sudo nmap -v -sn "$segmento_red.0/24" | grep "Nmap scan report" | awk '{print $5}'
