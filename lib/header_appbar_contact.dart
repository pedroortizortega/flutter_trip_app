import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_back.dart';

class HeaderAppBarContact extends StatelessWidget{
  @override
  String nameSectionBar;
  HeaderAppBarContact(this.nameSectionBar);
  Widget build(BuildContext context) {
    // TODO: implement build
    final appBarContact = Stack(
      children: <Widget>[
        GradientBackContacts(nameSectionBar),
      ],
    );
    return appBarContact;
  }

}