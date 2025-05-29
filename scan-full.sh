#!/bin/bash

# Script: scan-full.sh
# Autor: Prestidigitador
# Fecha: 2025-05-31
# Objetivo: Escanear la red local y detectar servicios en el router

# Mostrar mensaje de inicio
echo "[*] Iniciando escaneo completo..."

# Definir carpetas y fecha
OUTPUT_DIR=~/nmap.study/full-scans
DATE=$(date +"%Y-%m-%d_%H%M")

# Crear carpeta si no existe
mkdir -p $OUTPUT_DIR

# Escaneo de red: dispositivos activos
echo "[*] Escaneando red local..."
nmap -sn 192.168.1.0/24 > "$OUTPUT_DIR/red-activos_$DATE.txt"

# Escaneo de servicios en el router
echo "[*] Escaneando servicios del router (192.168.1.1)..."
nmap -sV 192.168.1.1 > "$OUTPUT_DIR/router-servicios_$DATE.txt"

# Mensaje final
echo "[+] Escaneo completo. Resultados guardados en:"
echo "    - Dispositivos activos: $OUTPUT_DIR/red-activos_$DATE.txt"
echo "    - Servicios del router: $OUTPUT_DIR/router-servicios_$DATE.txt"
