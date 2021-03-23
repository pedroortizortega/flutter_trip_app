import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/batman-flashpoint.jpeg";
  int n_reviews = 0;
  int n_photos = 0;
  String name;
  String comment;
  Review(
      this.pathImage, this.name, this.comment, this.n_reviews, this.n_photos);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit
                .cover, // para que acomode al centro por muy grande que este la imagen
            image: AssetImage(pathImage), // aqui va la imagen
          )), // utilizo el container para formar una especie de marco circular
    );
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber, //Color(0xFF0xFFf),
        size: 13.0,
      ),
    );
    final star_half = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amber, //Color(0xFF0xFFf),
        size: 13.0,
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(
        top: 2.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber, //Color(0xFF0xFFf),
        size: 13.0,
      ),
    );
    final user_name = Container(
      child: Text(
        name,
        style: TextStyle(fontSize: 20.0, fontFamily: "Lato"),
      ),
      margin: EdgeInsets.only(top: 5.0, left: 10.0),
    );
    final numbReviews = Text(
      "$n_reviews reviews ",
      style: TextStyle(
          fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
    );
    final numbPhotos = Text(
      "$n_photos photos ",
      style: TextStyle(
          fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
    );
    final review_user_detail = Container(
        margin: EdgeInsets.only(left: 10.0, top: 5.0, right: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            numbReviews,
            numbPhotos,
            Row(
              children: [star, star, star_half, star_border, star_border],
            )
          ],
        ));
    final description_detail = Container(
      child: Text(
        comment,
        style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
            fontFamily: "Lato",
            color: Color(0xFFa3a5a7)),
      ),
      margin: EdgeInsets.only(top: 5.0, left: 10.0),
    );
    final review_detail = Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // para que se alinea al inicio (izquierda)
      children: [user_name, review_user_detail, description_detail],
    );
    final reviews = Row(
      children: [photo, review_detail],
    );
    return reviews;
  }
}
