import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Place/ui/screens/home_trips.dart';
import 'User/ui/screens/profile_trips.dart';
import 'Place/ui/screens/search_trips.dart';

class MyTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final my_trips_cupertino = Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
        },
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo), label: ""),
        ]),
      ),
    );
    return my_trips_cupertino;
  }
}
