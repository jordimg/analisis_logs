#!/bin/bash

# Verifica si el archivo de logs fue proporcionado
if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo_de_logs>"
    exit 1
fi

LOG_FILE=$1

# Verifica si el archivo existe
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: El archivo '$LOG_FILE' no existe."
    exit 1
fi

echo "📊 Análisis del archivo de logs: $LOG_FILE"
echo "--------------------------------------------"

# Top 5 IPs con más peticiones
echo "🔹 Top 5 IPs con más peticiones:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

echo "--------------------------------------------"

# Top 5 rutas más solicitadas
echo "🔹 Top 5 rutas más solicitadas:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

echo "--------------------------------------------"

# Top 5 códigos de respuesta
echo "🔹 Top 5 códigos de respuesta:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

echo "--------------------------------------------"

# Top 5 User Agents
echo "🔹 Top 5 User Agents:"
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
