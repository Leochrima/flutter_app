import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        SizedBox(height: 10),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            "Makerspace",
            style: TextStyle(
              fontSize: 110,
              //fontFamily: 'RobotoMono',
            ),
          ),
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 100),
          child: MyButton(
            mytext: "Werde ein Macher!",
            event: () => Navigator.pushNamed(context, '/menupage'),
          ),
        )
      ])),
    ); /* Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "JAPAN JOURNEY",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(width: 10),
              Image.asset(
                "lib/images/japanflag.png",
                height: 30,
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Image.asset(
              "lib/images/japan5.png",
              height: 350,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Erleben Sie Japan!",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Erleben Sie Japan!",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Entdecke das Land der aufgehenden Sonne und tauche ein in eine Welt voller Tradition, Kultur und atemberaubender Natur.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: MyButton(
              mytext: "Reise Starten!",
              event: () => Navigator.pushNamed(context, '/menupage'),
            ),
          ),
        ]),
      ),
    ); */
  }
}
