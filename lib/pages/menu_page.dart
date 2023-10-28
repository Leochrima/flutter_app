import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/components/event_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    List EventList = [
      EventTile(
        name: "Mitama Matsuri Festival",
        price: "€ 49",
        imagePath: "lib/images/japan7.png",
        rating: "5",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      EventTile(
        name: "Noodle Haromy Japan",
        price: "€ 18",
        imagePath: "lib/images/japan3.png",
        rating: "4",
        details: () => Navigator.pushNamed(context, '/noodleharomypage'),
      ),
      EventTile(
        name: "Mount Fuji Tour",
        price: "€ 39",
        imagePath: "lib/images/japan6.png",
        rating: "4.3",
        details: () {},
      ),
    ];

    return Scaffold(
      backgroundColor: _isDarkMode
          ? Colors.black
          : Color.fromARGB(255, 215, 165,
              187), //when darkmode true ist gibt es black zurück, wenn Dark Mode false ist rosa Farbe
      appBar: AppBar(
        title: Text("J A P A N"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, //Schatten der Appbar
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(context, '/cartpage'),
            ),
          )
        ], //der Button der da automatisch angezeigt wird in der Appar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsetsDirectional.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: const Color(0xffffb46c),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "32% Nachlass",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 15),
                    MyButton(mytext: "Buchen", event: () {}),
                  ],
                ),
                Image.asset(
                  "lib/images/japan1.png",
                  height: 135,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Suche Event",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Events",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            //sorgt dafür, dass das Listview Widget den gesamten noch Verfügbaren Raum der Seite ausfüllt
            child: ListView.builder(
              itemBuilder: (context, index) => EventList[index],
              itemCount: EventList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Derzeit Beliebt",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsetsDirectional.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 179, 156),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "lib/images/japan2.png",
                  height: 115,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kimono Kultur",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "€ 33",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
