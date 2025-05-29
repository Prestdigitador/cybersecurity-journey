#!/bin/bash

# Directorio de salida
OUTPUT_DIR=~/nmap.study/router-scans
DATE=$(date +"%Y-%m-%d_%H%M")

# Crear directorio si no existe
mkdir -p $OUTPUT_DIR

# Ejecutar escaneo
echo "[*] Escaneando router en 192.168.1.1..."
nmap -sV 192.168.1.1 > "$OUTPUT_DIR/escaneo-router_$DATE.txt"

echo "[+] Escaneo guardado en: $OUTPUT_DIR/escaneo-router_$DATE.txt"
