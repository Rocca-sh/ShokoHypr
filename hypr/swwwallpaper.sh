#!/bin/bash

# Directorio de las imágenes
WALLPAPER_DIR="$HOME/wallpapers"

# Seleccionar una imagen aleatoria del directorio
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Cambiar el fondo con swww
swww img "$RANDOM_WALLPAPER" --transition-type fade --transition-duration 1
