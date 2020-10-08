import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  /**
   * Metodo iconFloating, genera un contenedor con un FloatingActionButton
   * mediante de forma dinamica, mediante parámetros enviados a la función
   */
  Container iconFloating(var colorIcon, bool minIcon, var typeIcon, double sizeIcon){
    return Container(
            margin: EdgeInsets.only(right: 20.0),
            child: FloatingActionButton(
            backgroundColor: colorIcon,
            mini: minIcon,
            tooltip: "Fav",
            child: Icon(
              //Icons.bookmark_border,
              //Icons.brightness_medium
              //Icons.mail_outline,
              typeIcon,
              size: sizeIcon,
              color: Colors.indigo,
              
             ),
            onPressed: () {},
          ),
          );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 100.0,
      
      margin: EdgeInsets.only(
        left: 20.0, 
      ),
      child: ListView(
        //padding: EdgeInsets.all(15.0),
        
        scrollDirection: Axis.horizontal,
        
        children: <Widget>[
          iconFloating(Colors.white, true, Icons.bookmark_border, 15.0),
          iconFloating(Colors.white70, true, Icons.brightness_medium, 15.0),
          iconFloating(Colors.white, false, Icons.add, 30.0),
          iconFloating(Colors.white70, true, Icons.mail_outline, 15.0),
          iconFloating(Colors.white70, true, Icons.person, 15.0),
          
        ],
      ),
    );
  }
}
