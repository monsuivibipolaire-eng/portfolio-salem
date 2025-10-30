import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from './app.component';

// Routes SPA simple
const routes: Routes = [
  { path: '', component: AppComponent },
  { path: '**', redirectTo: '' }
];

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    CommonModule,
    BrowserAnimationsModule,
    RouterModule.forRoot(routes, { 
      useHash: true, 
      scrollPositionRestoration: 'enabled',
      anchorScrolling: 'enabled',  // Smooth scroll pour anchors #id
      onSameUrlNavigation: 'reload'  // Force reload pour même URL + #id
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
