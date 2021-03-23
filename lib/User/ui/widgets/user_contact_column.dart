import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter_trip_app/User/ui/widgets/user_contact.dart';

class UserContactColumn extends StatelessWidget {
  Map dictContacts;
  UserContactColumn(this.dictContacts);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var contacts =
        <Widget>[]; // Para hacer una lista de widgets, List() no funciona
    for (var j = 0; j < dictContacts.length; j++) {
      contacts.add(UserContact(
          dictContacts[j]["contactImg"],
          dictContacts[j]["contactName"],
          dictContacts[j]["contactDescription"]));
    }
    final contact_column = Container(
      margin: EdgeInsets.only(
        top: 150.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: contacts,
      ),
    );
    return contact_column;
  }
}
