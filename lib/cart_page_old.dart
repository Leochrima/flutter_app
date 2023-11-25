import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/components/cart_tile.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  if (CartModel.nudelsuppe > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 61, 91, 212),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Nudelsuppe",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          "€ 18,00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              CartModel.nudelsuppe.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.white),
                              onPressed: CartModel.clearNudelsuppe,
                            )
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  if (CartModel.festival > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 61, 91, 212),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Mitama Matsuri Festival",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          "€ 49,00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              CartModel.festival.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.white),
                              onPressed: CartModel.clearfestival,
                            )
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 61, 91, 212),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        "Menge der Events",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        CartModel.totalItems.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            CartModel.festival.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.white),
                            onPressed: CartModel.clearfestival,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
