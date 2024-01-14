import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/components/event_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

final Uri instagramUrl = Uri.parse("https://www.google.com/");

class _MenuPageState extends State<MenuPage> {
  bool _isDarkMode = false;

  void _launchInstagram() async {
    if (await canLaunchUrl(instagramUrl)) {
      await launchUrl(instagramUrl, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not launch Instagram';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(235, 239, 246, 1),
          Color.fromARGB(255, 125, 190, 244)
          //Color.fromRGBO(0, 0, 0, 1),
          //Color.fromRGBO(00, 53, 96, 1)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(""),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            /* IconButton(
              onPressed: () { },
              icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            ), */
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cartpage'),
              ),
            )
          ], //der Button der da automatisch angezeigt wird in der Appar
        ),
        body: Column(children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "Willkommen im",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(height: 15),
          Image.asset(
            "lib/images/makerspace.png",
            //width: 300,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/shoppage'),
                child: Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  //margin: EdgeInsetsDirectional.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xffffb46c),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "Shop",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/calendarpage'),
                child: Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  //margin: EdgeInsetsDirectional.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xffffb46c),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "Kalender",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
            ],
          ),
          Expanded(
              child: SizedBox(
            height: 1,
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () => _launchInstagram(),
                    child:
                        Container(child: FaIcon(FontAwesomeIcons.instagram))),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Öffnungszeiten"),
                    Text("Di & Do: 10-16 Uhr"),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );

    /* Scaffold(
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
    ); */
  }
}
