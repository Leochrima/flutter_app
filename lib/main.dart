import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/pages/event_pages/festival.dart';
import 'package:japan_reise/pages/event_pages/noodleharomy.dart';
import 'package:japan_reise/pages/menu_page.dart';
import 'package:japan_reise/pages/start_page.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/cart_page.dart';
import 'haha';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 99, 68, 68)),
      routes: {
        '/startpage': (context) => StartPage(),
        '/menupage': (context) => MenuPage(),
        '/festivalpage': (context) => FestivalPage(),
        '/noodleharomypage': (context) => NoodleHaromyPage(),
        '/cartpage': (context) => CardPage(),
      },
    );
  }
}
