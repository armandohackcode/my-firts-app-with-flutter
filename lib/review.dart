import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage = "assets/img/dog.jpg";
  String name = "Armando";
  String details = "1 review 5 photos";
  String comment = "  There is an amazing place in Sri Lanka";
  double positionTop = 20.0;
  var textColor = Colors.white;
  /**
   * Card Item data profile
   */
  Review(this.pathImage,this.name,this.details,this.comment,this.positionTop,this.textColor);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userCommet = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: textColor,
          fontWeight: FontWeight.w900,
        ),   
        ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: Color(0xFFa3a5a7)
        ),   
        ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: positionTop + 5,
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: textColor,
          fontWeight: FontWeight.bold
        ),
        ),
    );

    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInfo,
          userCommet
        ],
      );

    final photo = Container(
      margin: EdgeInsets.only(
        top:positionTop,
        left:20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(pathImage)
           ),
      ),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],);
  }

}