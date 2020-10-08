import 'package:flutter/material.dart';
import 'package:flutter_app/card_image_list.dart';
import 'package:flutter_app/gradient_back.dart';
class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bien venido",250.0),
        CardImageList(Axis.horizontal,350.0,250.0,20.0,false,Alignment(0.9, 1.1))
      ],
    );
  }
  
}