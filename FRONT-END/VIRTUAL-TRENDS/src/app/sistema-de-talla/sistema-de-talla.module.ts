import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { TallaEstandarComponent } from './talla-estandar/talla-estandar.component';

import { SistemasTallasComponent } from './sistemas-tallas/sistemas-tallas.component';
import { ImagenComponent } from './imagen/imagen.component';
import { PanelDeControlComponent } from './panel-de-control/panel-de-control.component';
import { TallaPersonalizadaComponent } from './talla-personalizada/talla-personalizada.component';
import { ReactiveFormsModule } from '@angular/forms';
import { AppMobileComponent } from './app-mobile/app-mobile.component';

@NgModule({
  declarations: [
    SistemasTallasComponent,
    ImagenComponent,
    PanelDeControlComponent,
    TallaPersonalizadaComponent,
    TallaEstandarComponent, 
    AppMobileComponent
  ],
  imports: [
    CommonModule,
    ReactiveFormsModule,
  ]
})
export class SistemaDeTallaModule { }
