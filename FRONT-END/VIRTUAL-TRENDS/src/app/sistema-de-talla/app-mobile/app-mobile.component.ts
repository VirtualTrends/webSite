import { Component, OnInit, ɵcoerceToBoolean } from '@angular/core';
import { NavigationService } from 'src/app/services/navigation/navigation.service';
import { SwAppMobileService } from 'src/app/services/sw-appmobile';

@Component({
  selector: 'app-app-mobile',
  templateUrl: './app-mobile.component.html',
  styleUrls: ['./app-mobile.component.css']
})
export class AppMobileComponent implements OnInit {
 
  constructor(
    private appmobileSS: SwAppMobileService,
    private navigation: NavigationService
  ) {
  }

  ngOnInit() {
  }
  cerrarAppMobile(){

    this.appmobileSS.$appMobile.emit(false)

  }

}
