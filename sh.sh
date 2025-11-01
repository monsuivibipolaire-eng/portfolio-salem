#!/bin/bash

# Script pour supprimer définitivement le background blanc du menu responsive (transparent + blur seulement)

HTML_FILE="src/app/app.component.html"

if [ ! -f "$HTML_FILE" ]; then
  echo "Erreur: $HTML_FILE non trouvé. Exécutez depuis la racine du projet."
  exit 1
fi

# Sauvegarde
BACKUP="${HTML_FILE}.no-white-bg.bak"
if [ ! -f "$BACKUP" ]; then
  cp "$HTML_FILE" "$BACKUP"
  echo "Sauvegarde créée: $BACKUP"
fi

# Nouveau style sans background (transparent par défaut, garde blur et border)
NEW_STYLE='style="backdrop-filter: blur(20px); border-top: 1px solid rgba(0,0,0,0.1);"'

# Awk pour matcher le div mobile et remplacer son style (supprime background, gère condensé)
awk -v new_style="$NEW_STYLE" '
/<div.*class.*md:hidden.*absolute.*top-full/ {
  # Capture la ligne <div ... style="old_style"> et remplace par new_style
  sub(/style="[^"]*"/, new_style);
  print;
  in_div = 1;
  next
}
in_div && /<\/div>/ { in_div = 0; next }
in_div { next }
{ print }
' "$HTML_FILE" > "${HTML_FILE}.tmp" && mv "${HTML_FILE}.tmp" "$HTML_FILE"

# Fallback sed si awk rate (remplace tout le style par new_style, pour cas condensé)
sed -i "s/style=\"[^\"]*background[^;]*;[^\"]*\"/style=\"$NEW_STYLE\"/g" "$HTML_FILE"
sed -i "s/stylebackground[^;]*;backdrop-filter/sstyle=\"$NEW_STYLE\"/g" "$HTML_FILE"  # Condensé sans quotes

# Vérifications
if grep -q 'backdrop-filter: blur(20px); border-top: 1px solid rgba(0,0,0,0.1);"' "$HTML_FILE" && ! grep -q 'background: rgba(255,255,255' "$HTML_FILE"; then
  echo "✓ Background blanc supprimé : menu responsive maintenant transparent (sans fond blanc, garde blur et bordure subtile)."
  echo "Le menu s'affiche overlay clair sur le contenu, sans changement opacifiant en responsive."
else
  echo "❌ Suppression échouée. Éditez manuellement le div md:hidden absolute top-full : changez style=\"background: rgba(255,255,255,0.6); ...\" en style=\"backdrop-filter: blur(20px); border-top: 1px solid rgba(0,0,0,0.1);\"."
fi

echo "Script exécuté. Relancez 'ng serve'. Testez burger mobile : menu transparent (inspectez F12 > Styles > div md:hidden : background doit être 'none' ou transparent)."
echo "Si encore blanc, purgez cache navigateur (Ctrl+Shift+R) ou vérifiez CSS global (pas de !important sur background blanc)."
