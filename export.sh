#!/bin/bash

# Script pour concaténer les fichiers du dossier src d'un projet Angular

# Vérifier si le dossier src existe
if [ ! -d "src" ]; then
  echo "Erreur : Le dossier 'src' n'existe pas dans le répertoire courant."
  exit 1
fi

# Nom du fichier de sortie
OUTPUT_FILE="src_concatene.txt"

# Vider le fichier de sortie s'il existe
> "$OUTPUT_FILE"

# Concaténer tous les fichiers texte (exclure node_modules et fichiers binaires)
find src -type f \
  \( -name "*.ts" -o -name "*.html" -o -name "*.css" -o -name "*.scss" -o -name "*.json" -o -name "*.spec.ts" \) \
  -not -path "*/node_modules/*" \
  -exec sh -c 'echo "=== Fichier: {} ==="; cat "{}"; echo -e "\n\n"' \; >> "$OUTPUT_FILE"

echo "Concaténation terminée. Le fichier de sortie est : $OUTPUT_FILE"
