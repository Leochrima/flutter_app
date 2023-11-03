import 'package:flutter/material.dart';
import 'package:japan_reise/components/category_page.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/models/database.dart';
import 'package:japan_reise/pages/event_pages/festival.dart';
import 'package:japan_reise/pages/event_pages/noodleharomy.dart';
import 'package:japan_reise/pages/menu_page.dart';
import 'package:japan_reise/pages/shop.dart';
import 'package:japan_reise/pages/start_page.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/models/database.dart';
import 'package:japan_reise/cart_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => CartModel(),
    ),
    ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => DataBase(),
    ),
  ])
      /* ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => {CartModel(), DataBase()},
    ), */
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 0, 53, 96)),
      routes: {
        '/startpage': (context) => StartPage(),
        '/menupage': (context) => MenuPage(),
        '/shoppage': (context) => Shop(),
        '/festivalpage': (context) => FestivalPage(),
        '/noodleharomypage': (context) => NoodleHaromyPage(),
        '/cartpage': (context) => CardPage(),
        '/categorypage': (context) => CategoryPage(),
      },
    );
  }
}
