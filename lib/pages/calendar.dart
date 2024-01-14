import 'package:flutter/material.dart';
import 'package:japan_reise/models/database.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(235, 239, 246, 1),
          Color.fromARGB(255, 125, 190, 244)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kalender"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          //leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cartpage'),
              ),
            )
          ], //der Button der da automatisch angezeigt wird in der Appar
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
              "Hier soll ein Kalender angezeigt werden welcher mit dem Kalender auf der Website des Makerspace synchronisiert ist!"),
        ),
      ),
    );
  }
}
