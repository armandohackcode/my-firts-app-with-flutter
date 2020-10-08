import 'package:flutter/material.dart';
import 'package:flutter_app/header_profile.dart';

import 'card_image_list.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment(1.0,1.5),
      children: <Widget>[
        
        HeaderProfile(),
        CardImageList(Axis.vertical,230.0,400.0,0.0,true,Alignment(0.1, 1.5)),
        
      ],
    );
  }
  
}