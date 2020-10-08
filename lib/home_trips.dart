import 'package:flutter/material.dart';
import 'package:flutter_app/review_list.dart';

import 'description_place.dart';
import 'header_app_bar.dart';

class HomeTrips extends StatelessWidget{

  String description =
      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace("Platzi", 4, description),
                  ReviewList()
                ],
              ),
              HeaderAppBar()
            ],
          );
  }

}