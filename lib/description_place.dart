import "package:flutter/material.dart";
import 'button_purple_ink.dart';
class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int numStars;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.numStars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );
    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,//Color(0xFF0xFFf),
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,//Color(0xFF0xFFf),
      ),
    );

    final description_place = Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 20.0,
          right: 17.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w300,
        ),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );

    final title_starts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato"
            ),
            textAlign: TextAlign.left,
            softWrap: true,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star_half,
            star_border
          ],
        )
      ],
    );

    final full_description = Column(
      children: [
        title_starts,
        description_place,
        ButtonPurpleInk("Navigate")
      ],
    );

    return full_description;
  }
}