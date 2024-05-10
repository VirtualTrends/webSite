import { EventEmitter, Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SwAppMobileService {

  constructor() { }

  $appMobile = new EventEmitter<any>();

}
