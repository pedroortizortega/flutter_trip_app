import 'package:flutter/material.dart';
import 'Place/ui/screens/home_trips.dart';
import 'Place/ui/screens/search_trips.dart';
import 'User/ui/screens/profile_trips.dart';
import 'my_trips_cupertino.dart';

class MyTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyTrips();
  }
}

class _MyTrips extends State<MyTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    // Lista de cada una de las secciones de la app
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  void onTapTapped(int index) {
    // funcion que controla el cambio de indice, el cual indica a que seccion ir
    setState(() {
      // usat setState para controlar el estado del widget
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bottomNavBar = Scaffold(
      body: widgetsChildren[
          indexTap], //Aqui se monta la seccion de la app escogida
      bottomNavigationBar: Theme(
        // Aqui es para colorear y darle un tema a la barra
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          // este es el widget de la barra de navegacion con sus botones
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
          ],
        ),
      ),
    );
    return bottomNavBar;
  }
}
