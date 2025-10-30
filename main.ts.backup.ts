import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { AppModule } from './app/app.module';

import AOS from 'aos';

// Init AOS
AOS.init({
  duration: 1200,
  once: true,
  offset: 100,
  easing: 'ease-in-out',
  anchorPlacement: 'top-bottom'
});

platformBrowserDynamic().bootstrapModule(AppModule)
  .catch(err => console.error(err));
