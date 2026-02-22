#!/bin/bash

# Leer valores de /proc/meminfo
mem_total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
mem_available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')

# Convertir a MB
total_mb=$((mem_total / 1024))
used_mb=$(((mem_total - mem_available) / 1024))

# Mostrar resultado
echo " ${used_mb}MB / ${total_mb}MB"
