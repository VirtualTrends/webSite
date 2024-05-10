import { Component, OnInit } from '@angular/core';
import { NavigationService } from 'src/app/services/navigation/navigation.service';

@Component({
  selector: 'app-app-mobile',
  templateUrl: './app-mobile.component.html',
  styleUrls: ['./app-mobile.component.css']
})
export class AppMobileComponent implements OnInit {
  appmobileSS: any;

  constructor() {
  }

  ngOnInit() {
  }
  cerrarAppMobile(){

    this.appmobileSS.$appmobile.emit(false)

  }

}
