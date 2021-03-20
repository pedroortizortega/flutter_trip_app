import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  List listPathImages;
  CardImageList(this.listPathImages);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var listPaths = <Widget>[];
    for (var i = 0 ; i < listPathImages.length; i++){
      listPaths.add(
          CardImage(
              listPathImages[i]
          )
      );
    }
    final card_list = Container(
      height: 320,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal, // cambiamos la direccion del listview a horizontal por default es vertical)
        children: listPaths,
      ),
    );
    return card_list;
  }

}