import 'package:flutter/material.dart';
import 'package:japan_reise/components/shop_tile.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/models/database.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List ShopList = [];
    for (final product in models_3D) {
      ShopList.add(ShopTile(
          name: product.name,
          imagePath: product.imagePath,
          details: () => Navigator.pushNamed(context,
              '/festivalpage'))); //this must be conditional depending on the content of the page
    }
    /* List ShopList = [
      ShopTile(
        name: models_3D[0].name,
        imagePath: "lib/images/japan7.png",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
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
    ]; */

    return Consumer<CartModel>(
        builder: (context, CartModel, child) => Scaffold(
              appBar: AppBar(
                title: Text("3D Modelle"), //category
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
                      onPressed: () =>
                          Navigator.pushNamed(context, '/cartpage'),
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
            ));
  }
}
