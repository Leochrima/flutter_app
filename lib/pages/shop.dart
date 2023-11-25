import 'package:flutter/material.dart';
import 'package:japan_reise/components/shop_tile.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    List ShopList = [
      ShopTile(
        name: "3D Modelle",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/categorypage'),
      ),
      ShopTile(
        name: "Arduinos",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Holzwerkstücke",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      ShopTile(
        name: "Mitama Matsuri Festival",
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          /* IconButton(
            onPressed: () { },
            icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          ), */
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(context, '/cartpage'),
            ),
          )
        ], //der Button der da automatisch angezeigt wird in der Appar
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => ShopList[index],
        itemCount: ShopList.length,
      ),
    );
  }
}
