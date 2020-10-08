import 'package:flutter/material.dart';
import 'package:flutter_app/review.dart';

class ReviewList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/img/dog.jpg";
  String name = "Armando";
  String details = "1 review 5 photos";
  String comment = "  There is an amazing place in Sri Lanka";
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage,name,details,comment,20.0,Colors.black87),
        Review(pathImage,name,details,comment,20.0,Colors.black87),
        Review(pathImage,name,details,comment,20.0,Colors.black87),
      ],
    );
  }

}