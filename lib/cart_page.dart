import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/models/database.dart';
import 'package:japan_reise/components/cart_tile.dart';

class CardPage extends StatelessWidget {
  const CardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List CartList = [];
    int numberofItems = 0;
    for (final category in allProducts) {
      for (final product in category.products) {
        if (product.quantity > 0) {
          numberofItems++;
          CartList.add(CartTile(
              product: product,
              name: product.name,
              imagePath: product.imagePath,
              price: product.price,
              quantity: product.quantity,
              productpage: () =>
                  Navigator.pushNamed(context, '/productpage', arguments: {
                    /*"name": product.name,
                    "imagPath": product.imagePath,
                    "quantity": product.quantity*/
                    "product": product,
                  }))); //this must be conditional depending on the content of the page
        }
      }
    }
    return Consumer<DataBase>(
      builder: (context, DataBase, child) => Scaffold(
        //backgroundColor: Color.fromARGB(255, 215, 165, 187),
        appBar: AppBar(
          title: Text("Warenkorb"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: numberofItems,
            itemBuilder: (context, index) => CartList[
                index], /*{
              //return Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 61, 91, 212),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("Bla"),
              );
            },*/
          ),
        ),
      ),
    );
  }
}
