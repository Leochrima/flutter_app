import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/components/cart_tile.dart';

final List<String> items = <String>["a", "b", "c"];

class CardPage extends StatelessWidget {
  final String name = "t";
  final String imagePath = "/lib/images/3D.png";
  final int quantity = 3;

  //final void Function()? productpage;

  const CardPage({
    super.key,
    //this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, CartModel, child) => Scaffold(
        //backgroundColor: Color.fromARGB(255, 215, 165, 187),
        appBar: AppBar(
          title: Text("Warenkorb"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 61, 91, 212),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("Bla"),
              );
            },
          ),
        ),
      ),
    );
  }
}
