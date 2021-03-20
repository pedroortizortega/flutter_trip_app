import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserContact extends StatelessWidget{
  String pathImage = "assets/img/batman-flashpoint.jpeg";
  String name;
  String contactDetail;
  UserContact(this.pathImage, this.name, this.contactDetail);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover, // para que acomode al centro por muy grande que este la imagen
            image: AssetImage(pathImage), // aqui va la imagen
          )
      ),// utilizo el container para formar una especie de marco circular
    );
    final mail = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 5.0,
        left: 10.0
      ),
      child: Icon(
        Icons.email,
        color: Colors.white,
        size: 25.0,
      ),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
        shape: BoxShape.rectangle,
        color: Colors.redAccent,
      ),
    );
    final mail_outlined = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          right: 5.0,
          left: 10.0
      ),
      child: Icon(
        Icons.email_outlined,
        color: Colors.white,
        size: 25.0,
      ),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
        shape: BoxShape.rectangle,
        color: Colors.redAccent,
      ),
    );
    final user_name = Container(
      child: Text(
        name,
        style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Lato"
        ),
      ),
      margin: EdgeInsets.only(
          top: 5.0,
          left: 10.0
      ),
    );
    final contact_description = Container(
        child: Flexible(
          child: Text(
            contactDetail,
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato",
                color: Color(0xFFa3a5a7)
            ),
          ),
        ),
      margin: EdgeInsets.only(
          top: 5.0,
          left: 10.0,
      ),
      constraints:  BoxConstraints(
        maxWidth: 230.0,
        minWidth: 230.0
      ),
    );
    final contact_details = Column(
      crossAxisAlignment: CrossAxisAlignment.start, // para que se alinea al inicio (izquierda)
      children: [
        user_name,
        contact_description
      ],
    );
    final user_detail_row = Row(
      children: [
        photo,
        contact_details,
        mail,
      ],
    );
    return user_detail_row;
  }

}