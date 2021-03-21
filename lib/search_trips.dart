import 'package:flutter/material.dart';
import 'card_image_list_vertical.dart';
import 'header_appbar.dart';

class SearchTrips extends StatelessWidget {
  String text_for_desc =
      """Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, Pretium quis, sem. Nulla consequat massa quis enim.""";

  // Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a""";
  // This widget is the root of your application.
  //-- Valores de entrada para ImagesList View -----
  List listPathImagesView = [
    "assets/img/batman-flashpoint.jpeg",
    "assets/img/flash-muerte.jpg"
  ];
  //-------------------------------------------------
  // -------- Valores de entrara para el ReviewList -----
  Map dReview = {
    0: {
      0: "assets/img/flash-muerte.jpg",
      1: "Zoom",
      2: "La muerte de Zoom, la paradoja de Flash",
      3: 5,
      4: 7
    },
    1: {
      0: "assets/img/batman-flashpoint.jpeg",
      1: "Thomas Wayne",
      2: "La versión de Batman en la paradoja de Flash",
      3: 20,
      4: 2
    },
    2: {
      0: "assets/img/batman-flashpoint.jpeg",
      1: "Bruce Wayne",
      2: "La versión de Batman en la paradoja de Flash",
      3: 20,
      4: 2
    },
  };
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
  // -----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final search_list = Stack(children: <Widget>[
      HeaderAppBarUser("Busquedas"),
      CardImageListVertical(listPathImagesView),
    ]);
    return search_list;
  }
}
