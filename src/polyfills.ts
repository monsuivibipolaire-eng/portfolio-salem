/**
 * Polyfills pour Angular/AOS - Compatibilité navigateurs + Zone.js pour reactivity
 */

import 'zone.js';  // Correct pour v0.12+ (entrypoint racine, pas /dist/zone)

// Globals pour AOS/Webpack (Buffer, process - évite erreurs runtime)
if (typeof (window as any).global === 'undefined') {
  (window as any).global = window;
  (window as any).process = { env: { DEBUG: undefined }, version: '' };
  (window as any).Buffer = { from: (arr: number[]) => new Uint8Array(arr) as any };
}

// Fix AOS + requestAnimationFrame (Zone.js conflit scroll)
(window as any).__Zone_disable_requestAnimationFrame = true;  // Optimise animations

// Polyfills optionnels (IE11 si besoin - commentez pour modern browsers)
// import 'core-js/features/array/includes';  // npm install core-js@3

