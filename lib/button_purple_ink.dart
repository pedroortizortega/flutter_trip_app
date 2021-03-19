import 'package:flutter/material.dart';

class ButtonInk extends StatelessWidget{
  String button_name;
  ButtonInk(this.button_name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final button = InkWell(
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF84CD1)
            ],
            begin: FractionalOffset(0.4, 0.0),
            end: FractionalOffset(0.9, 0.6),
            stops: [0.0, 0.7],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            button_name
          ),
        ),
      ),
    );
    return button;
  }
}