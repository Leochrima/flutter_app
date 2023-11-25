import 'package:flutter/material.dart';

class DataBase extends ChangeNotifier {
  //int get totalItems => festival + nudelsuppe;

  //hier müssen wir eine Variable definieren, welche speichert, welche Kategorie im Shop ausgewählt wurde damit diese dann bestimmen kann was in der category_page angezeigt wird
}

class Categories {
  final String? category;
  final String? imagePath;
  final List? products;

  const Categories({
    required this.category,
    required this.imagePath,
    required this.products,
  });
}

class Products {
  final String? name;
  final String? imagePath;
  final int? price;
  final String? creator;
  final String? dl_link;

  const Products({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.creator,
    this.dl_link,
  });
}

//------------------- Definition of Products----------------------

List everything = [
  Categories(
    category: "3D Modelle",
    imagePath: "lib/images/japan7.png",
    products: models_3D,
  ),
  Categories(
    category: "Arduino",
    imagePath: "lib/images/japan2.png",
    products: models_3D,
  ),
  Categories(
    category: "Holzwerkstücke",
    imagePath: "lib/images/japan3.png",
    products: models_3D,
  )
];

List models_3D = [
  Products(
      name: "Globus",
      imagePath: "lib/images/fox.PNG",
      price: 100,
      creator: "M. Kholghi"),
  Products(
      name: "Mann",
      imagePath: "lib/images/japan5.png",
      price: 100,
      creator: "M. Kholghi"),
  Products(
      name: "Affe",
      imagePath: "lib/images/japan6.png",
      price: 100,
      creator: "M. Kholghi"),
  Products(
      name: "Zahn",
      imagePath: "lib/images/japan7.png",
      price: 100,
      creator: "M. Kholghi"),
];
