import 'package:flutter/material.dart';
import 'package:japan_reise/components/shop_tile.dart';
import 'package:japan_reise/models/database.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    List ShopList = [];
    for (final category in allProducts) {
      ShopList.add(ShopTile(
          name: category.name,
          imagePath: category.imagePath,
          details: () =>
              Navigator.pushNamed(context, '/categorypage', arguments: {
                "category": category,
              } /*arguments: {
                "name": product.name,
                "imagPath": product.imagePath,
                "content": product.content,
                "price": product.price,
                "creator": product.creator,
              }*/
                  ))); //this must be conditional depending on the content of the page
    }
    /*List ShopList = [
      ShopTile(
        name: "3D Modelle",
        imagePath: "lib/images/3D.PNG",
        details: () => Navigator.pushNamed(
          context,
          '/categorypage',
          arguments: {"id": 1, "name": "3D Modelle"},
        ),
      ),
      ShopTile(
        name: "Arduinos",
        imagePath: "lib/images/electro.png",
        details: () => Navigator.pushNamed(
          context,
          '/categorypage',
          arguments: {"id": 2, "name": "Arduinos"},
        ),
      ),
      ShopTile(
        name: "Holzwerkstücke",
        imagePath: "lib/images/wood.PNG",
        details: () => Navigator.pushNamed(context, '/categorypage',
            arguments: {"id": 3, "name": "Holzwerkstücke"}),
      ),
      ShopTile(
        name: "Tonware",
        imagePath: "lib/images/tonwaren.png",
        details: () => Navigator.pushNamed(context, '/categorypage',
            arguments: {"id": 4, "name": "Tonware"}),
      ),
    ];*/

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
          title: Text("Shop"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          //leading: Icon(Icons.menu),
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => ShopList[index],
            itemCount: ShopList.length,
          ),
        ),
      ),
    );
  }
}
