import 'package:flutter/material.dart';

class ShopTile extends StatelessWidget {
  final String name;
  final String imagePath;
  final void Function()? details;

  const ShopTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(8),
      width: 400,
      //height: 400,
      decoration: BoxDecoration(
        color: Color.fromARGB(99, 202, 202, 204),
        borderRadius: BorderRadius.circular(10),
        /* boxShadow: BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
        ), */
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: details,
                child: Image.asset(
                  imagePath,
                  //width: 100,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          //SizedBox(height: 10),
          /* Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "price",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
               Row(
                children: [
                  Text(
                    "rating",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color.fromARGB(255, 224, 198, 6),
                  )
                ],
              ) 
            ],
          )*/
        ],
      ),
    );
  }
}
