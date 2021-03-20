import 'package:flutter/material.dart';

class ButtonPurpleInk extends StatelessWidget{
  String button_name;
  ButtonPurpleInk(this.button_name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final button = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
                content: Text(button_name),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF84CD9)
            ],
            begin: FractionalOffset(0.5, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [1.0, 0.40],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            button_name,
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
    return button;
  }
}