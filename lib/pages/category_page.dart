import 'package:flutter/material.dart';
import 'package:japan_reise/components/shop_tile.dart';

class CategoryPage extends StatelessWidget {
  final int? id;
  const CategoryPage({
    super.key,
    this.id = 0,
  });

  @override
  Widget build(BuildContext context) {
    /*final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final arg1 = arg["id"];
    final arg2 = arg["name"];*/
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final category = arg["category"];
    /*List category = [];
    switch (arg1 as int) {
      case 1:
        category = models_3D;
      case 2:
        category = electronic;
      case 3:
        category = holz;
      case 4:
        category = ton;
      default:
    }*/
    List ShopList = [];
    for (final product in category.products) {
      ShopList.add(ShopTile(
          name: product.name,
          imagePath: product.imagePath,
          details: () =>
              Navigator.pushNamed(context, '/productpage', arguments: {
                "product": product,
              } /*arguments: {
                "name": product.name,
                "imagPath": product.imagePath,
                "content": product.content,
                "price": product.price,
                "creator": product.creator,
              }*/
                  ))); //this must be conditional depending on the content of the page
    }

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
          title: Text(category.name), //category
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
                icon: Icon(
                  Icons.shopping_cart,
                ),
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
