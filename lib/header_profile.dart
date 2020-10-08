import 'package:flutter/material.dart';
import 'package:flutter_app/gradient_back.dart';
import 'package:flutter_app/icon_list.dart';
import 'package:flutter_app/review.dart';

class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Mi perfil",350.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Review("assets/img/perfil.jpg","Armando Lopez R.","Web Developer","armandohackcode@gmail.com",120.0,Colors.white),
            IconList()
          ],
        )

      ],);
  }
  
}