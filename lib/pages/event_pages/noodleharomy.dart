import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';

class NoodleHaromyPage extends StatelessWidget {
  final String name = "Bla";
  final String rating = "5";

  const NoodleHaromyPage({
    super.key,
    //required this.name,
    //required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 165, 187),
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
                "lib/images/japan7.png",
                height: 200,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  Text(
                    "4.0",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Noodle Haromy Japan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Das erwartet Sie",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus nec elit at rhoncus. Sed eu augue scelerisque, consectetur nunc non, rhoncus lectus. Sed posuere nibh sagittis molestie posuere. Etiam eget porta nunc, id ultricies ligula. Duis gravida nulla blandit mauris rhoncus tincidunt. Nam sollicitudin pretium bibendum. Aenean cursus ornare felis vitae porta.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Color.fromARGB(255, 61, 91, 212),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "€ 18",
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
                                onPressed: cartModel.removeNudelsuppe,
                                icon: Icon(
                                  Icons.remove,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              cartModel.nudelsuppe.toString(),
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
                                onPressed: cartModel.addNudelsuppe,
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
    );
  }
}
