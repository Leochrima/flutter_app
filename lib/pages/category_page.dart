import 'package:flutter/material.dart';
import 'package:japan_reise/components/shop_tile.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/models/database.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  final int? id;
  const CategoryPage({
    super.key,
    this.id = 0,
  });

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final arg1 = arg["id"];
    final arg2 = arg["name"];
    List categorie = [];
    switch (arg1 as int) {
      case 1:
        categorie = models_3D;
      case 2:
        categorie = electronic;
      case 3:
        categorie = holz;
      case 4:
        categorie = ton;
      default:
    }
    List ShopList = [];
    for (final product in categorie) {
      ShopList.add(ShopTile(
          name: product.name,
          imagePath: product.imagePath,
          details: () =>
              Navigator.pushNamed(context, '/festivalpage', arguments: {
                "name": product.name,
                "imagPath": product.imagePath,
                "content": product.content,
                "price": product.price,
                "creator": product.creator,
              }))); //this must be conditional depending on the content of the page
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
                title: Text(arg2), //category
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
