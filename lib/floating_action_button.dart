import 'package:flutter/material.dart';

class FloatingActionButtonFav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonFav();
  }
}

class _FloatingActionButtonFav extends State<FloatingActionButtonFav>{
  int favCount= 0;
  Icon favIcon =  Icon(
    Icons.favorite_border_rounded ,
  );
  //---Para carmbiar el estado del icono del boton---
  void onPressedFav() => setState(() {
    if (favCount == 0) {
      favIcon = Icon(
        Icons.favorite_rounded,
      );
      favCount = 1;
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a tus favoritos"),
        ),
      );
    } else {
      favIcon = Icon(Icons.favorite_border_rounded);
      favCount = 0;
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Eliminaste de tus favoritos"),
        ),
      );
    }
  });
  //-----------------------------------------------
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final fav_button = FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: Color(0xFF11DA53),
      mini: true, //tipo de elemento mini (boton pequeño),
      tooltip: "Fav" , // Cuando alguien se posicione sobre el boton le va a aparecer un recuadro describiendo "Fav"
      child: favIcon,
    );
    return fav_button;
  }
}