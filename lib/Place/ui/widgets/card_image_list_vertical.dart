import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageListVertical extends StatelessWidget {
  List listPathImages;
  CardImageListVertical(this.listPathImages);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var listPaths = <Widget>[];
    for (var i = 0; i < listPathImages.length; i++) {
      listPaths.add(CardImage(listPathImages[i]));
    }
    final card_list = Container(
      margin: EdgeInsets.only(
        top: 250.0,
        left: 10.0,
      ),
      width: 720,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis
            .vertical, // cambiamos la direccion del listview a horizontal por default es vertical)
        children: listPaths,
      ),
    );
    return card_list;
  }
}
