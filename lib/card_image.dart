import 'package:flutter/material.dart';
import 'package:flutter_app/floating_action_button_green.dart';
import 'package:flutter_app/image_description.dart';

class CardImage extends StatelessWidget{

    double  height = 350.0;
    double  width =  250.0;
    double  left = 20.0;
    bool description = false;
    String pathImage = "assets/img/place1.jpg";
    var aling = Alignment(0.9, 1.1);
  CardImage(this.pathImage,this.height,this.width,this.left,this.description,this.aling);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top:80.0,
        left: left
        
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(pathImage) ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0,7.0))
          ]
      ),
    );
    return Stack(
      alignment: aling,
      children: <Widget>[
        card,
        if (description) ImageDescription()
        else FloatingActionButtonGreen()
        
      ],
    );
  }
  
}