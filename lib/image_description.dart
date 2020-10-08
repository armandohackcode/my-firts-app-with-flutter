import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class ImageDescription extends StatelessWidget {
  String title = "La Playa";
  String details = "Puesta de sol en las magníficas playas de Indonecia";
  String steps = "Steps 123,123.222";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final titleCard = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 17.0, fontWeight: FontWeight.bold),
      ),
    );

    final detailsCard = Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 12.0,
          fontWeight: FontWeight.w900,
          color: Colors.grey
        ),
      ),
    );
    final stepsCard = Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Text(
        steps,
        textAlign: TextAlign.left,
        style:
            TextStyle(fontFamily: "Lato", fontSize: 17.0, color: Colors.yellow),
      ),
    );
    final cardData = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleCard, detailsCard, stepsCard],
    );

    final descriptiption = Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]
        ),
        child: cardData ,
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        descriptiption,
        FloatingActionButtonGreen()
      ],
    );

  }
}
