import 'package:flutter/material.dart';
import 'header_appbar_contact.dart';
import '../widgets/user_contact_column.dart';

class ProfileTrips extends StatelessWidget {
  Map dContacts = {
    0: {
      "contactImg": "assets/img/flash-muerte.jpg",
      "contactName": "Zoom",
      "contactDescription":
          "La muerte de Zoom, la paradoja de Flash, es el punto final de la saga",
    },
    1: {
      "contactImg": "assets/img/batman-flashpoint.jpeg",
      "contactName": "Thomas Wayne",
      "contactDescription":
          "La versión de Batman en la paradoja de Flash, donde usa armas letales",
    },
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final profile = Stack(children: <Widget>[
      ListView(children: <Widget>[
        //new DescriptionPlace("Lordran", 4, text_for_desc),
        //new ReviewList(dReview),
        new UserContactColumn(dContacts),
        //new UserContact("assets/img/batman-flashpoint.jpeg", "Hola mundo", "Detalles del contacto extraido del backend"),
        //new UserContact("assets/img/flash-muerte.jpg", "Mundo", "Detalles del contacto extraido del backend")
      ]),
      HeaderAppBarContact("Contactos"),
      //HeaderAppBar("Popular", listPathImagesView)
      //HeaderAppBar("Contactos"),
    ]);
    return profile;
  }
}
