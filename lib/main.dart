import 'package:flutter/material.dart'; // Esta paqueteria es para usar elos widgets a partir de Material
import 'package:flutter_trip_app/my_trips_cupertino.dart';
import 'dart:core';
import 'my_trips.dart';

void main() {
  runApp(MyApp());// para correr la app, punto de inicio de una app en flutter
}

// MyApp es una clase que contiene todos los widgets
// StatelessWidget es la clase padre de los widgets
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // build es un metodo de StatelessWidget
    return MaterialApp( // Punto inicial donde toma todos los elementos de la biblioteca llamada
      title: 'My Trips', // titulo para el task manager
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTripsCupertino(),
       //MyHomePage(title: 'Home Page'), // en home es la estructura de la app, la composicion
      // MyHomePage es un clase heredada de StatelessWidget
      // El Scaffold se incluye en el home, y aqui le indico hacia que widget se debe dirigir cada componenete de la app
    );
  }
}

// Un widget stateful son los que interactuan y tienen un estado, como un boton
// Un widget stateless no tienen estado, como texto, icono, y no interactua con el usuario
// los layouts son las columnas, renglones, views

