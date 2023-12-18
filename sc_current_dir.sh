#!/bin/bash

# Obtener el título de la ventana en foco
window_title=$(xdotool getactivewindow getwindowname)

# Eliminar el carácter ~ si está presente en el título
window_title="${window_title/\~/$HOME}"

# Extraer la ruta del directorio del título (suponiendo que el título contiene la ruta)
# El título podría estar en el formato: "Nombre de la ventana - Ruta del directorio"
current_dir="${window_title##*:}"


# Abre una nueva terminal en el directorio actual
gnome-terminal -- bash -c "cd '$current_dir'; exec bash"

