#!/bin/bash

# Validar si se pasaron dos argumentos
if [ $# -ne 2 ]; then
    echo "Uso: $0 <extension_original> <nueva_extension>"
    exit 1
fi

extension=$1
cambio=$2

# Validar si hay archivos con la extensión dada
shopt -s nullglob  # Evita que el bucle se ejecute si no hay coincidencias
archivos=(*.$extension)

if [ ${#archivos[@]} -eq 0 ]; then
    echo "No se encontraron archivos con la extensión .$extension"
    exit 1
fi

# Renombrar archivos
for imagen in "${archivos[@]}"; do
    nuevo_nombre="${imagen%.$extension}.$cambio"
    echo "Renombrando: $imagen -> $nuevo_nombre"
    mv "$imagen" "$nuevo_nombre"
done

echo "Renombrado completado."

