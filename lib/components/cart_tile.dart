import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final String name;
  final String imagePath;
  final int quantity;
  final String price;
  final void Function()? productpage;

  const CartTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.quantity,
    required this.productpage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 2.5),
      padding: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(99, 202, 202, 204),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: productpage,
                child: Image.asset(
                  imagePath,
                  height: 50,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 3),
              Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Expanded(
              child: SizedBox(
            width: 1,
          )),
          Row(
            children: [
              Text(
                quantity.toString(), //CartModel.nudelsuppe.toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.white),
                onPressed: () {}, //CartModel.clearNudelsuppe,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
