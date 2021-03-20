import 'package:flutter/material.dart';
import 'floating_action_button.dart';

class CardImage extends StatelessWidget{
  String pathImage;
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      //child: ,
      height: 270.0,
      width: 250,
      margin: EdgeInsets.only(
        top:85.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover, // se ajuste la imagen y no se vea cortada
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)), // para hacer el border redondeado
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38, // color del shadow
            blurRadius: 15.0, // degradado
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
    );
    final card_fav = Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonFav()
      ],

    );
    return card_fav;
  }
  
}
