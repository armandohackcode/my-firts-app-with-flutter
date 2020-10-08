import 'package:flutter/material.dart';
import 'package:flutter_app/card_image.dart';

class CardImageList extends StatelessWidget{
  var scrollDirection = Axis.horizontal;
  double height = 350.0;
  double widht = 250.0;
  double left = 20.0;
  bool description = false;
  var aling = Alignment(0.9, 1.1);
  CardImageList(this.scrollDirection,this.height,this.widht,this.left,this.description,this.aling);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: scrollDirection,
        children: <Widget>[
          CardImage("assets/img/place1.jpg",height,widht,left,description,aling),
          CardImage("assets/img/place2.jpg",height,widht,left,description,aling),
          CardImage("assets/img/place3.jpg",height,widht,left,description,aling),
          CardImage("assets/img/place4.jpeg",height,widht,left,description,aling)
        ],
      ),
    );
  }

}