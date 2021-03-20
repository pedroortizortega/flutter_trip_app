import 'package:flutter/material.dart';
import 'review.dart';
import 'dart:core';

class ReviewList extends StatelessWidget{
  Map dictReviews;
  ReviewList(this.dictReviews);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var reviews = <Widget>[]; // Para hacer una lista de widgets, List() no funciona
    for (var j=0; j < dictReviews.length; j++){
      reviews.add(Review(dictReviews[j][0], dictReviews[j][1], dictReviews[j][2], dictReviews[j][3], dictReviews[j][4]));
    }
    final review_list = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: reviews,
      ),
    );
    return review_list;
  }
}