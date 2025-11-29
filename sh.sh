#!/bin/bash

echo "🧹 Nettoyage du dossier de distribution..."
rm -rf dist

echo "🏗️ Construction de la version de production..."
# On ajoute l'option --output-hashing=all pour forcer le navigateur à voir que les fichiers ont changé
ng build --configuration production --output-hashing=all

echo "✅ Build terminé !"
echo "------------------------------------------------"
echo "⚠️  IMPORTANT POUR TESTER LE RÉSULTAT :"
echo "1. Si tu testes en local (ex: via http-server), n'oublie pas de VIDEZ LE CACHE de ton navigateur."
echo "2. Sur Chrome : F12 -> Onglet 'Application' -> 'Service Workers' -> Coche 'Update on reload'."
echo "3. Ou fais un 'Hard Refresh' : Ctrl + F5 (Windows) ou Cmd + Shift + R (Mac)."
echo "------------------------------------------------"