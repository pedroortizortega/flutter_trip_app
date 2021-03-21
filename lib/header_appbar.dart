import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  List listPathImgs;
  String nameSectionBar;
  HeaderAppBar(this.nameSectionBar, this.listPathImgs);
  Widget build(BuildContext context) {
    // TODO: implement build
    final appBar = Stack(
      children: <Widget>[
        GradientBack(nameSectionBar),
        CardImageList(listPathImgs)
      ],
    );
    return appBar;
  }
}

class HeaderAppBarUser extends StatelessWidget {
  @override
  //List listPathImgs;
  String nameSectionBar;
  HeaderAppBarUser(this.nameSectionBar);
  Widget build(BuildContext context) {
    // TODO: implement build
    final appBar = Stack(
      children: <Widget>[GradientBack(nameSectionBar)],
    );
    return appBar;
  }
}
