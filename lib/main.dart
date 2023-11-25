import 'package:flutter/material.dart';
import 'package:japan_reise/pages/category_page.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/models/database.dart';
import 'package:japan_reise/pages/product_page.dart';
import 'package:japan_reise/pages/menu_page.dart';
import 'package:japan_reise/pages/shop.dart';
import 'package:japan_reise/pages/start_page.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/models/database.dart';
import 'package:japan_reise/cart_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CartModel()),
      ChangeNotifierProvider(create: (context) => DataBase()),
    ],
    child: const MyApp(),
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Color.fromARGB(255, 00, 53, 96)),
        ),
        //primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 00, 53, 96),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/startpage': (context) => StartPage(),
        '/menupage': (context) => MenuPage(),
        '/shoppage': (context) => Shop(),
        '/festivalpage': (context) => ProductPage(),
        '/cartpage': (context) => CardPage(),
        '/categorypage': (context) => CategoryPage(),
      },
    );
  }
}
