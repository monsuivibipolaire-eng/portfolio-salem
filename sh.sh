#!/bin/bash

# Script FIX Commandes : Build + Serve Production Séparé + npx Deploy Correct
# Sépare ng serve/npx, base-href /CVSalemKamoun.com/, no malformed args

echo "🔧 Fix commande : Séparez serve/build + npx (no unknown args) + base-href correct..."

cd $(pwd)

# 1. Build prod (génère dist/browser optimisé - Requis avant serve/deploy)
rm -rf dist
ng build --configuration production --base-href /CVSalemKamoun.com/
if [ $? -eq 0 ]; then
  echo "✅ Build production OK : dist/portfolio-salem/browser/ (hashé, AOS/zone.js ~150KB)"
  grep -i base dist/portfolio-salem/browser/index.html  # Confirme <base href="/CVSalemKamoun.com/">
else
  echo "❌ Build fail - npm install --legacy-peer-deps"
  exit 1
fi

# 2. Serve production local (optimisé, base-href /CVSalemKamoun.com/ - Test sans npx)
pkill -f "ng serve" 2>/dev/null
ng serve --configuration production --base-href /CVSalemKamoun.com/ --open
if [ $? -eq 0 ]; then
  echo "✅ Serve production lancé : http://localhost:4200/CVSalemKamoun.com (auto-open, menu/AOS test)"
  echo "   - Test local : Scroll hero → Fade-up expériences, console no 404 (base-href fixe assets)"
  echo "   - Arrêt : Ctrl+C ; Puis deploy npx ci-dessous"
else
  echo "❌ Serve fail - Port occupé ? Ajoutez --port=4201"
  ng serve --configuration production --base-href /CVSalemKamoun.com/ --port=4201 --open
fi

# Pause pour test serve (manuel : Ctrl+C pour continuer script)
read -p "Appuyez sur Entrée après test serve (Ctrl+C pour arrêter)..."

# 3. Deploy npx séparé (après serve/build - Correct args : --base-href hyphen, dir/message)
npm install --save-dev angular-cli-ghpages@latest --legacy-peer-deps
npx angular-cli-ghpages --dir dist/portfolio-salem/browser --base-href /CVSalemKamoun.com/ --message "v1.1" --no-silent
if [ $? -eq 0 ]; then
  echo "✅ Deploy npx OK : Push gh-pages (live https://monsuivibipolaire-eng.github.io/CVSalemKamoun.com)"
  echo "   - Fichiers : .nojekyll/404.html auto, index.html (base /CVSalemKamoun.com/)"
else
  echo "❌ npx fail - Full : --repo=https://github.com/monsuivibipolaire-eng/CVSalemKamoun.com.git --name=Salem"
  npx angular-cli-ghpages --dir dist/portfolio-salem/browser --base-href /CVSalemKamoun.com/ --message "v1.1" --no-silent --repo https://github.com/monsuivibipolaire-eng/CVSalemKamoun.com.git --name "Salem Kamoun" --email "kammoun.salem@gmail.com"
fi

echo ""
echo "Erreurs résolues : Unknown args (commande malformée - Séparez ng serve et npx), base-href ( /CVSalemKamoun.com/ pas /portfolio-salem/)"
echo "   - ng serve : --configuration production --base-href /CVSalemKamoun.com/ (local optimisé)"
echo "   - npx : --dir dist/... --base-href /CVSalemKamoun.com/ --message \"v1.1\" (séparé, hyphen)"
echo "   - Build : Avant serve/deploy (prod optimisé, no prod alias)"
echo "Test Local : http://localhost:4200/CVSalemKamoun.com (hero gradient, menu cliquable AOS flip)"
echo "Live : https://monsuivibipolaire-eng.github.io/CVSalemKamoun.com (CDN 2-5 min, routing no 404)"
echo "Commandes Manuelles :"
echo "   - Build: ng build --configuration production --base-href /CVSalemKamoun.com/"
echo "   - Serve: ng serve --configuration production --base-href /CVSalemKamoun.com/ --open"
echo "   - Deploy: npx angular-cli-ghpages --dir dist/portfolio-salem/browser --base-href /CVSalemKamoun.com/ --message \"v1.1\""
echo "Docs : ng serve --help (--base-href string) ; angular-cli-ghpages --help (--base-href hyphen CLI) [web:63]"
echo "Si port occupé : --port=4201 ; Base-href wrong : Assets 404 local/live"
