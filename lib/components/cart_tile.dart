import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final String name;
  final String imagePath;
  final int quantity;
  final void Function()? productpage;

  const CartTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.quantity,
    required this.productpage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(99, 202, 202, 204),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: productpage,
            child: Image.asset(imagePath),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            "Quantity", //CartModel.nudelsuppe.toString(),
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
    );
  }
}
