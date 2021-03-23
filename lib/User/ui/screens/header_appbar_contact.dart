import 'package:flutter/material.dart';
import 'package:flutter_trip_app/User/ui/widgets/gradient_back_contacts.dart';

class HeaderAppBarContact extends StatelessWidget {
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
