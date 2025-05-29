#!/bin/bash

echo "[*] Iniciando escaneo de red local..."

OUTPUT_DIR=~/nmap.study/network-scans
DATE=$(date +"%Y-%m-%d_%H%M")

mkdir -p $OUTPUT_DIR

nmap -sn 192.168.1.0/24 > "$OUTPUT_DIR/escaneo-red_$DATE.txt"

echo "[+] Escaneo completado. Resultados disponibles en: $OUTPUT_DIR/escaneo-red_$DATE.txt"
