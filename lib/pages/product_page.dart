import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/models/database.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  //Todo: auch rating in database eintragen
  final String rating = "5";
  const ProductPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final product = arg["product"];
    /*final name = arg["name"];
    final String picture = arg["imagPath"];
    final details = arg["content"];
    final price = arg["price"];
    final creator = arg["creator"];*/
    return Consumer<DataBase>(
      builder: (context, DataBase, child) => Container(
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
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () => Navigator.pushNamed(context, '/cartpage'),
                ),
                //Icon(Icons.dark_mode),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  product.imagePath, //picture,
                  height: 200,
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 25),
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
                                  product.name,
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
                                      color: Color(0xffffb46c),
                                      size: 25,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      product.rating.toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "Creator:  ${product.creator.toString()}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: Container(
                                    child: SingleChildScrollView(
                                      child: Text(
                                        product.details,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),

                      SizedBox(height: 15),

                      //Row Preis und Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            product.price.toString(),
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
                                  onPressed: () => {
                                    DataBase.removeItem(product),
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                product.quantity.toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () => {
                                    DataBase.addItem(product),
                                  },
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
