import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final gradient_back = Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // aqui le estamos diciendo que vaya del color en la posicion 1 a la ultima
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2,
              0.0), // que tanto quiero que se traslape un color respecto a otro
          end: FractionalOffset(
              1.0, 0.6), // hasta donde quiero que llegue el color mas obscuro
          stops: [0.0, 0.6], // la orientacion del gradiente, de arriba a abajo
          tileMode: TileMode
              .clamp, //color que quiero que se ponga de relleno meintras si pasa algo con nuestro gradiente, mientras carga, en cosa de que falle algo con el gradiente
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold, // Para negrita
          fontFamily: "Lato",
          color: Colors.white,
        ),
      ),
      alignment: Alignment(-0.8, -0.4),
    );
    return gradient_back;
  }
}
