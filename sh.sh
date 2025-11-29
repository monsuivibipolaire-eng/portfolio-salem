#!/bin/bash

# Chemin vers le fichier
FILE="src/app/app.component.html"

echo "Mise à jour du portfolio avec le projet Kerkennah et le bouton rouge..."

cat << 'EOF' > $FILE
<div class="min-h-screen">
  <nav class="fixed top-0 w-full bg-white/80 backdrop-blur-3xl border-b border-gray-200/50 shadow-lg z-50" style="backdrop-filter: blur(40px);">
    <div class="container mx-auto px-6 py-4 flex justify-between items-center">
      <a href="#home" class="group flex items-center space-x-2 text-xl font-bold text-transparent bg-clip-text bg-gradient-to-r from-blue-500 to-purple-600 hover:from-blue-600 hover:to-purple-700 transition-all duration-500 cursor-pointer" data-aos="zoom-in" data-aos-delay="100">
        <div class="relative">
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="animate-spin-slow">
            <circle cx="20" cy="20" r="20" fill="#3b82f6"/>
            <text x="20" y="24" text-anchor="middle" dy=".3em" font-size="18" font-weight="bold" fill="white">SK</text>
          </svg>
          <div class="absolute inset-0 rounded-full bg-blue-500/30 blur-xl group-hover:bg-purple-500/40 transition-all duration-500 opacity-0 group-hover:opacity-100"></div>
        </div>
      </a>
      
      <ul class="hidden md:flex space-x-4 items-center" data-aos="fade-down" data-aos-delay="200">
        <li data-aos="flip-left" data-aos-delay="300" data-aos-duration="800">
          <a href="#home" class="menu-pill inline-flex items-center space-x-2 px-6 py-3 text-sm font-medium text-gray-800 bg-white/70 backdrop-blur-xl rounded-full border border-gray-200/50 shadow-lg hover:shadow-xl hover:shadow-blue-300/30 transition-all duration-400 ease-out hover:-translate-y-1 hover:bg-white/90 relative overflow-hidden cursor-pointer">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path></svg>
            <span>Accueil</span>
          </a>
        </li>
        <li data-aos="flip-left" data-aos-delay="400" data-aos-duration="800">
          <a href="#experiences" class="menu-pill inline-flex items-center space-x-2 px-6 py-3 text-sm font-medium text-gray-800 bg-white/70 backdrop-blur-xl rounded-full border border-gray-200/50 shadow-lg hover:shadow-xl hover:shadow-blue-300/30 transition-all duration-400 ease-out hover:-translate-y-1 hover:bg-white/90 relative overflow-hidden cursor-pointer">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path></svg>
            <span>Expériences</span>
          </a>
        </li>
        <li data-aos="flip-left" data-aos-delay="500" data-aos-duration="800">
          <a href="#skills" class="menu-pill inline-flex items-center space-x-2 px-6 py-3 text-sm font-medium text-gray-800 bg-white/70 backdrop-blur-xl rounded-full border border-gray-200/50 shadow-lg hover:shadow-xl hover:shadow-blue-300/30 transition-all duration-400 ease-out hover:-translate-y-1 hover:bg-white/90 relative overflow-hidden cursor-pointer">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
            <span>Compétences</span>
          </a>
        </li>
        <li data-aos="flip-left" data-aos-delay="600" data-aos-duration="800">
          <a href="#education" class="menu-pill inline-flex items-center space-x-2 px-6 py-3 text-sm font-medium text-gray-800 bg-white/70 backdrop-blur-xl rounded-full border border-gray-200/50 shadow-lg hover:shadow-xl hover:shadow-blue-300/30 transition-all duration-400 ease-out hover:-translate-y-1 hover:bg-white/90 relative overflow-hidden cursor-pointer">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l9-5-9-5-9 5 9 5z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z"></path></svg>
            <span>Formation</span>
          </a>
        </li>
        
        <li data-aos="flip-left" data-aos-delay="650" data-aos-duration="800">
          <a href="#references" class="menu-pill inline-flex items-center space-x-2 px-6 py-3 text-sm font-medium text-white bg-gradient-to-r from-red-500 to-rose-600 backdrop-blur-xl rounded-full border border-red-200/50 shadow-lg hover:shadow-xl hover:shadow-red-300/40 transition-all duration-400 ease-out hover:-translate-y-1 hover:brightness-110 relative overflow-hidden cursor-pointer">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z" /></svg>
            <span>Mes Références</span>
          </a>
        </li>

        <li data-aos="flip-left" data-aos-delay="700" data-aos-duration="800">
          <a href="#contact" class="menu-pill inline-flex items-center space-x-2 px-6 py-3 text-sm font-medium text-gray-800 bg-white/70 backdrop-blur-xl rounded-full border border-gray-200/50 shadow-lg hover:shadow-xl hover:shadow-blue-300/30 transition-all duration-400 ease-out hover:-translate-y-1 hover:bg-white/90 relative overflow-hidden cursor-pointer">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
            <span>Contact</span>
          </a>
        </li>
      </ul>
      
      <button class="md:hidden relative p-2 rounded-full bg-white/70 backdrop-blur-xl border border-gray-200/50 shadow-lg hover:shadow-blue-300/30 transition-all duration-300 cursor-pointer" (click)="toggleMenu()" data-aos="fade-left" data-aos-delay="200">
        <svg class="w-6 h-6 text-gray-800 transition-transform duration-300" [class.rotate-180]="isMenuOpen" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path *ngIf="!isMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
          <path *ngIf="isMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
        </svg>
      </button>
    </div>
  </nav>

  <div class="md:hidden overflow-hidden transition-all duration-500 ease-in-out" *ngIf="isMenuOpen" [class.max-h-screen]="isMenuOpen" style="background: rgba(255,255,255,0.6); backdrop-filter: blur(20px); border-top: 1px solid rgba(0,0,0,0.1);">
    <ul class="flex flex-col space-y-2 p-6">
      <li><a href="#home" class="menu-pill-mobile inline-flex items-center space-x-3 py-3 px-4 text-base font-medium text-gray-800 bg-white/60 backdrop-blur-xl rounded-xl border border-gray-200/50 shadow-md hover:shadow-blue-300/20 hover:bg-white/80 transition-all duration-300 cursor-pointer" (click)="onNavClick('#home')">
        <svg class="w-5 h-5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path></svg>
        Accueil
      </a></li>
      <li><a href="#experiences" class="menu-pill-mobile inline-flex items-center space-x-3 py-3 px-4 text-base font-medium text-gray-800 bg-white/60 backdrop-blur-xl rounded-xl border border-gray-200/50 shadow-md hover:shadow-blue-300/20 hover:bg-white/80 transition-all duration-300 cursor-pointer" (click)="onNavClick('#experiences')">
        <svg class="w-5 h-5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path></svg>
        Expériences
      </a></li>
      <li><a href="#skills" class="menu-pill-mobile inline-flex items-center space-x-3 py-3 px-4 text-base font-medium text-gray-800 bg-white/60 backdrop-blur-xl rounded-xl border border-gray-200/50 shadow-md hover:shadow-blue-300/20 hover:bg-white/80 transition-all duration-300 cursor-pointer" (click)="onNavClick('#skills')">
        <svg class="w-5 h-5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
        Compétences
      </a></li>
      <li><a href="#education" class="menu-pill-mobile inline-flex items-center space-x-3 py-3 px-4 text-base font-medium text-gray-800 bg-white/60 backdrop-blur-xl rounded-xl border border-gray-200/50 shadow-md hover:shadow-blue-300/20 hover:bg-white/80 transition-all duration-300 cursor-pointer" (click)="onNavClick('#education')">
        <svg class="w-5 h-5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l9-5-9-5-9 5 9 5z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z"></path></svg>
        Formation
      </a></li>
      
      <li><a href="#references" class="menu-pill-mobile inline-flex items-center space-x-3 py-3 px-4 text-base font-medium text-white bg-gradient-to-r from-red-500 to-rose-600 backdrop-blur-xl rounded-xl border border-red-200/50 shadow-md hover:shadow-red-300/20 hover:brightness-110 transition-all duration-300 cursor-pointer" (click)="onNavClick('#references')">
        <svg class="w-5 h-5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z" /></svg>
        Mes Références
      </a></li>

      <li><a href="#contact" class="menu-pill-mobile inline-flex items-center space-x-3 py-3 px-4 text-base font-medium text-gray-800 bg-white/60 backdrop-blur-xl rounded-xl border border-gray-200/50 shadow-md hover:shadow-blue-300/20 hover:bg-white/80 transition-all duration-300 cursor-pointer" (click)="onNavClick('#contact')">
        <svg class="w-5 h-5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
        Contact
      </a></li>
    </ul>
  </div>

  <section id="home" class="parallax-section relative bg-gradient-to-br from-blue-500 via-purple-500 to-indigo-600 overflow-hidden" data-aos="fade">
    <div class="absolute inset-0 bg-white/10"></div>
    <div class="relative z-10 text-center text-white px-6 flex flex-col items-center justify-center min-h-screen">
      <img src="assets/profile.jpg" alt="Photo de profil - Salem Kamoun" class="w-32 h-32 md:w-48 md:h-48 rounded-full border-4 border-white/70 mb-6 object-cover" data-aos="zoom-in" data-aos-duration="1500">
      <h2 class="text-4xl md:text-6xl font-bold mb-6" data-aos="fade-up" data-aos-duration="1200">{{ profile.name }}</h2>
      <p class="text-xl mb-4" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">{{ profile.location }}</p>
      <div class="max-w-3xl mx-auto mb-8 px-4" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
        <p class="text-lg leading-relaxed">{{ profile.summary }}</p>
      </div>
      <a [href]="profile.linkedin" target="_blank" 
         class="inline-block bg-white/30 backdrop-blur-sm text-white px-8 py-4 rounded-full font-semibold hover:bg-white/50 transition-all duration-500 shadow-2xl hover:shadow-blue-300/50" 
         data-aos="fade-up" data-aos-delay="600" data-aos-duration="1000">
        Voir mon LinkedIn →
      </a>
    </div>
  </section>

  <section id="experiences" class="py-20 bg-gray-50" data-aos="fade-up">
    <div class="container mx-auto px-6">
      <h2 class="text-4xl font-bold text-center mb-16 text-gray-800" data-aos="fade-down" data-aos-duration="800">Expériences Professionnelles</h2>
      <div class="space-y-12 max-w-4xl mx-auto">
        <div *ngFor="let exp of profile.experiences; let i = index" 
             class="bg-white p-8 rounded-xl shadow-lg border-l-4 border-blue-500 transform hover:scale-105 transition-all duration-500" 
             [attr.data-aos]="'fade-up'" [attr.data-aos-delay]="i * 200" data-aos-duration="1000">
          <div class="flex items-start space-x-4">
            <div class="flex-shrink-0 w-12 h-12 bg-gradient-to-br from-blue-500 to-purple-600 rounded-full flex items-center justify-center animate-pulse">
              <span class="text-white font-bold text-sm">SK</span>
            </div>
            <div class="flex-1">
              <h3 class="text-2xl font-semibold text-gray-800 mb-2">{{ exp.role }}</h3>
              <p class="text-gray-600 mb-2">{{ exp.company }} • {{ exp.period }}</p>
              <p class="text-gray-500 mb-4 italic">{{ exp.location }}</p>
              <p class="text-gray-700 leading-relaxed">{{ exp.description }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="skills" class="py-20 bg-gradient-to-br from-indigo-400 to-purple-500 text-white" data-aos="fade-up">
    <div class="container mx-auto px-6 text-center">
      <h2 class="text-4xl font-bold mb-16" data-aos="fade-down" data-aos-duration="800">Compétences & Technologies</h2>
      <div class="mb-16" data-aos="fade-up" data-aos-duration="1000">
        <h3 class="text-2xl font-semibold mb-8">Technologies Principales</h3>
        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6 max-w-4xl mx-auto">
          <div *ngFor="let skill of profile.skills; let i = index" 
               class="bg-white/20 backdrop-blur-sm p-6 rounded-xl hover:bg-white/30 hover:scale-110 transition-all duration-500 shadow-lg hover:shadow-purple-300/50" 
               [attr.data-aos]="'fade-up'" [attr.data-aos-delay]="i * 150" data-aos-duration="800">
            <span class="text-lg font-medium">{{ skill }}</span>
          </div>
        </div>
      </div>
      <div data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">
        <h3 class="text-2xl font-semibold mb-8">Langues</h3>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-2xl mx-auto">
          <div *ngFor="let lang of profile.languages; let i = index" 
               class="bg-white/20 p-6 rounded-xl hover:scale-105 transition-all duration-300" data-aos="zoom-in" [attr.data-aos-delay]="i * 200">
            <h4 class="font-semibold mb-2">{{ lang.name }}</h4>
            <div class="w-full bg-white/30 rounded-full h-2">
              <div class="bg-white h-2 rounded-full animate-pulse" [style.width.%]="(lang.level.includes('Native') ? 100 : lang.level.includes('Limited') ? 40 : 80)"></div>
            </div>
            <p class="text-sm mt-1 opacity-90">{{ lang.level }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="education" class="py-20 bg-white" data-aos="fade-up">
    <div class="container mx-auto px-6">
      <h2 class="text-4xl font-bold text-center mb-16 text-gray-800" data-aos="fade-down" data-aos-duration="800">Formation Académique</h2>
      <div class="max-w-3xl mx-auto space-y-8" data-aos="fade-up" data-aos-duration="1000">
        <div *ngFor="let edu of profile.education" class="bg-gray-50 p-8 rounded-xl shadow-md hover:shadow-lg transition-all duration-500 transform hover:-translate-y-2">
          <div class="flex items-center space-x-6">
            <div class="flex-shrink-0 w-16 h-16 bg-gradient-to-br from-green-500 to-blue-600 rounded-full flex items-center justify-center animate-bounce">
              <span class="text-white font-bold text-xl">🎓</span>
            </div>
            <div>
              <h3 class="text-2xl font-semibold text-gray-800 mb-2">{{ edu.degree }}</h3>
              <p class="text-gray-600 mb-2">{{ edu.institution }}</p>
              <p class="text-gray-500 mb-4">{{ edu.period }}</p>
              <p class="text-gray-700">{{ edu.description }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="references" class="relative bg-gradient-to-br from-white via-sky-50 to-indigo-50 py-24">
    <div class="container mx-auto px-6 lg:px-12">
      <div class="max-w-3xl mx-auto text-center mb-16" data-aos="fade-up">
        <span class="inline-flex items-center px-4 py-1 rounded-full bg-blue-50 text-blue-600 text-xs font-semibold uppercase tracking-widest mb-4">
          Références
        </span>
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
          Quelques projets livrés et prototypes marquants
        </h2>
        <p class="text-gray-600">
          Une sélection d&apos;applications web développées pour des clients ou en projet personnel,
          avec accès de démonstration quand c&apos;est pertinent.
        </p>
      </div>

      <div class="grid gap-8 md:grid-cols-2">
        <article class="group relative rounded-3xl bg-white/80 border border-gray-100 shadow-lg shadow-emerald-50/40 p-6 lg:p-8 overflow-hidden" data-aos="fade-up" data-aos-delay="0">
          <div class="absolute inset-0 bg-gradient-to-br from-emerald-50/40 via-transparent to-teal-50/60 opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
          <div class="relative">
            <h3 class="text-xl font-semibold text-gray-900 mb-2">
              Reclamations Kerkennah – Plateforme Citoyenne
            </h3>
            <p class="text-sm text-gray-500 mb-4">
              Plateforme participative permettant aux habitants de signaler des incidents (voirie, éclairage) avec géolocalisation sur carte interactive, upload de photos et suivi de statut.
            </p>

            <div class="mb-4">
              <p class="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-1">Stack Technique</p>
              <div class="flex flex-wrap gap-2">
                <span class="px-2 py-1 bg-red-100 text-red-700 text-xs rounded-md">Angular 17</span>
                <span class="px-2 py-1 bg-yellow-100 text-yellow-700 text-xs rounded-md">Firebase</span>
                <span class="px-2 py-1 bg-green-100 text-green-700 text-xs rounded-md">Supabase</span>
                <span class="px-2 py-1 bg-blue-100 text-blue-700 text-xs rounded-md">Leaflet Maps</span>
                <span class="px-2 py-1 bg-cyan-100 text-cyan-700 text-xs rounded-md">Tailwind</span>
              </div>
            </div>

            <div class="rounded-2xl bg-gray-50 px-4 py-3 text-xs text-gray-700 space-y-1">
              <p><span class="font-semibold">Statut :</span> En production (PWA)</p>
              <p class="italic">Solution complète avec Back-office administrateur.</p>
            </div>
          </div>
        </article>

        <article class="group relative rounded-3xl bg-white/80 border border-gray-100 shadow-lg shadow-blue-50/40 p-6 lg:p-8 overflow-hidden" data-aos="fade-up" data-aos-delay="50">
          <div class="absolute inset-0 bg-gradient-to-br from-blue-50/40 via-transparent to-indigo-50/60 opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
          <div class="relative">
            <h3 class="text-xl font-semibold text-gray-900 mb-2">
              Application de gestion de stock
            </h3>
            <p class="text-sm text-gray-500 mb-4">
              Application web complète de gestion de stock avec suivi des produits, mouvements et alertes sur les niveaux critiques.
            </p>

            <div class="mb-4">
              <p class="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-1">Démo</p>
              <a href="https://gestiondestock-5eb46.web.app" target="_blank" rel="noreferrer" class="inline-flex items-center text-sm font-medium text-blue-600 hover:text-blue-700">
                https://gestiondestock-5eb46.web.app
              </a>
            </div>

            <div class="rounded-2xl bg-gray-50 px-4 py-3 text-xs text-gray-700 space-y-1">
              <p><span class="font-semibold">Identifiant :</span> admin@gmail.com</p>
              <p><span class="font-semibold">Mot de passe :</span> admin123</p>
            </div>
          </div>
        </article>

        <article class="group relative rounded-3xl bg-white/80 border border-gray-100 shadow-lg shadow-blue-50/40 p-6 lg:p-8 overflow-hidden" data-aos="fade-up" data-aos-delay="100">
          <div class="absolute inset-0 bg-gradient-to-br from-emerald-50/40 via-transparent to-sky-50/60 opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
          <div class="relative">
            <h3 class="text-xl font-semibold text-gray-900 mb-2">
              Application personnalisée pour un client (Baskoula)
            </h3>
            <p class="text-sm text-gray-500 mb-4">
              Solution sur-mesure pour la gestion des opérations de pesée, avec tableau de bord, suivi des tickets et export des rapports.
            </p>

            <div class="mb-4">
              <p class="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-1">Démo</p>
              <a href="https://baskoula-db326.web.app/dashboard" target="_blank" rel="noreferrer" class="inline-flex items-center text-sm font-medium text-blue-600 hover:text-blue-700">
                https://baskoula-db326.web.app/dashboard
              </a>
            </div>

            <div class="rounded-2xl bg-gray-50 px-4 py-3 text-xs text-gray-700 space-y-1">
              <p><span class="font-semibold">Identifiant :</span> admin@gmail.com</p>
              <p><span class="font-semibold">Mot de passe :</span> admin123</p>
            </div>
          </div>
        </article>

        <article class="group relative rounded-3xl bg-white/80 border border-gray-100 shadow-lg shadow-blue-50/40 p-6 lg:p-8 overflow-hidden" data-aos="fade-up" data-aos-delay="150">
          <div class="absolute inset-0 bg-gradient-to-br from-purple-50/40 via-transparent to-pink-50/60 opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
          <div class="relative">
            <h3 class="text-xl font-semibold text-gray-900 mb-2">
              Passonbuddy – Suivi d&apos;humeur assisté par IA
            </h3>
            <p class="text-sm text-gray-500 mb-4">
              Application web de suivi d&apos;humeur connectée à un agent IA (via n8n), capable de générer des avis simulés d&apos;un psychiatre
              à partir des journaux d&apos;humeur de l&apos;utilisateur.
            </p>

            <div class="space-y-3 mb-4">
              <div>
                <p class="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-1">Landing</p>
                <a href="https://passonbuddy-b6f53.web.app/landing" target="_blank" rel="noreferrer" class="inline-flex items-center text-sm font-medium text-blue-600 hover:text-blue-700">
                  https://passonbuddy-b6f53.web.app/landing
                </a>
              </div>
              <div>
                <p class="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-1">Démo vidéo</p>
                <a href="https://www.youtube.com/watch?v=V62yTwHDJv4" target="_blank" rel="noreferrer" class="inline-flex items-center text-sm font-medium text-blue-600 hover:text-blue-700">
                  YouTube – Présentation de Passonbuddy
                </a>
              </div>
            </div>

            <p class="text-xs text-gray-500">
              Le projet n&apos;a pas été lancé publiquement : LinkedIn a changé son API et fermé la possibilité de l&apos;utiliser de manière
              programmatique, ce qui a bloqué l&apos;intégration prévue.
            </p>
          </div>
        </article>

        <article class="group relative rounded-3xl bg-white/80 border border-gray-100 shadow-lg shadow-blue-50/40 p-6 lg:p-8 overflow-hidden" data-aos="fade-up" data-aos-delay="200">
          <div class="absolute inset-0 bg-gradient-to-br from-indigo-50/40 via-transparent to-sky-50/60 opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
          <div class="relative">
            <h3 class="text-xl font-semibold text-gray-900 mb-2">
              LAMBARA Hosting – Gestion des grands bateaux
            </h3>
            <p class="text-sm text-gray-500 mb-4">
              Interface de gestion pour un service d&apos;hébergement dédié aux grands bateaux&nbsp;: gestion des navires, des séjours
              et des opérations associées.
            </p>

            <div class="mb-4">
              <p class="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-1">Démo</p>
              <a href="https://monsuivibipolaire-eng.github.io/LAMBARAHosting" target="_blank" rel="noreferrer" class="inline-flex items-center text-sm font-medium text-blue-600 hover:text-blue-700">
                https://monsuivibipolaire-eng.github.io/LAMBARAHosting
              </a>
            </div>

            <div class="rounded-2xl bg-gray-50 px-4 py-3 text-xs text-gray-700 space-y-1">
              <p><span class="font-semibold">Identifiant :</span> majdi@gmail.com</p>
              <p><span class="font-semibold">Mot de passe :</span> admin123</p>
            </div>
          </div>
        </article>
      </div>
    </div>
  </section>

  <section id="contact" class="parallax-section relative bg-gradient-to-br from-blue-50 via-purple-50 to-indigo-100 overflow-hidden" data-aos="fade">
    <div class="absolute inset-0 bg-fixed bg-center" style="background: linear-gradient(45deg, #dbeafe, #f3e8ff, #e0e7ff); animation: gradientShift 10s ease infinite;"></div>
    <div class="absolute inset-0 bg-white/20"></div>
    <div class="relative z-10 text-center text-gray-800 px-6 flex flex-col items-center justify-center min-h-screen">
      <h2 class="text-4xl font-bold mb-8" data-aos="fade-down" data-aos-duration="1200">Prêt à collaborer ?</h2>
      <div class="max-w-md space-y-6 mb-8 backdrop-blur-sm bg-white/70 rounded-xl p-6 shadow-lg" data-aos="zoom-in" data-aos-duration="1000">
        <p class="text-xl mb-2">📞 Téléphone : {{ profile.phone }}</p>
        <p class="text-xl">✉️ Email : {{ profile.email }}</p>
      </div>
      <a [href]="'mailto:' + profile.email" 
         class="inline-block bg-gradient-to-r from-blue-500 to-purple-600 text-white px-10 py-4 rounded-full font-semibold hover:from-blue-600 hover:to-purple-700 transition-all duration-500 shadow-lg hover:shadow-blue-300/50 transform hover:scale-105" 
         data-aos="fade-up" data-aos-duration="800">
        Envoyer un message
      </a>
      <p class="text-gray-600 mt-8" data-aos="fade-up" data-aos-delay="200">Discutons de votre projet !</p>
    </div>
  </section>

  <footer class="bg-white text-gray-800 py-8 text-center border-t border-gray-200" data-aos="fade-up">
    <div class="container mx-auto px-6">
      <p>&copy; 2025 Salem Kamoun. Tous droits réservés.</p>
      <p class="text-gray-500 mt-2 text-sm">{{ profile.location }}</p>
    </div>
  </footer>
</div>
EOF

echo "Modifications terminées !"