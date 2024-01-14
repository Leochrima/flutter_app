import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:japan_reise/models/database.dart';

class CardPage extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    /*for (final category in allProducts) {
      for (final product in category.products) {
        if (product.quantity > 0) {
          numberofItems++;
          CartList.add([1]
              /*CartTile(
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
                  })*/
              ); //); //this must be conditional depending on the content of the page
        }
      }
    }*/
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
            title: Text("Warenkorb"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: DataBase.fullInventory.length,
                    itemBuilder: (context, index) //=> CartList[index],
                        {
                      if (DataBase.fullInventory[index].quantity > 0) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: 8, right: 8, top: 2, bottom: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            leading: Image.asset(
                                DataBase.fullInventory[index].imagePath),
                            tileColor: Color.fromRGBO(8, 19, 42, 0.2),
                            title: Text(
                              DataBase.fullInventory[index].name,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 00, 53, 96)),
                            ),
                            subtitle: Text(
                              DataBase.fullInventory[index].price,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 00, 53, 96)),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  DataBase.fullInventory[index].quantity
                                      .toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                    icon:
                                        Icon(Icons.delete, color: Colors.white),
                                    onPressed: () => {
                                          setState(() {
                                            DataBase.clearItem(
                                                DataBase.fullInventory[index]);
                                          })
                                        }),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }),
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.symmetric(horizontal: 25),
                //width: 400,
                height: 75,
                decoration: BoxDecoration(
                  color: Color.fromARGB(99, 202, 202, 204),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(children: [
                  Text(
                    "Gesamt",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold
                        //color: const Color.fromARGB(255, 63, 63, 63),
                        ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    DataBase.getTotal(),
                    style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
