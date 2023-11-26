import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  //Todo: auch rating in database eintragen
  final String rating = "5";
  //final String picture = "lib/images/3D_1.PNG";
  const ProductPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final name = arg["name"];
    final String picture = arg["imagPath"];
    final details = arg["content"];
    final price = arg["price"];
    final creator = arg["creator"];
    return Consumer<CartModel>(
      builder: (context, CartModel, child) => Container(
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
          //backgroundColor: Color.fromARGB(255, 215, 165, 187),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            //leading: Icon(Icons.shopping_cart),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.shopping_cart),
              ),
              Icon(Icons.dark_mode),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  picture,
                  height: 200,
                ),
              ),
              SizedBox(height: 25),
              SizedBox(height: 25),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: Color.fromARGB(255, 102, 14, 42),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  //Row für Text
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    Text(
                                      rating,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  details,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.5,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Creator:  ${creator.toString()}"),
                                    Text("Download:")
                                  ],
                                )
                              ]),
                        ),
                      ),

                      SizedBox(height: 15),

                      //Row Preis und Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            price.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: CartModel.removeFestival,
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                CartModel.festival.toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: CartModel.addFestival,
                                  icon: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      MyButton(
                        mytext: "Zum Einkaufswagen",
                        event: () => Navigator.pushNamed(context, '/cartpage'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
