import 'package:flutter/material.dart';
import 'dart:core';

void main() => runApp(Parcial());

class Parcial extends StatelessWidget {
  const Parcial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial Alberto",
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final TextEditingController suerteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAGIC - ALBERTO MARIN",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lime,
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        child: Image(
                          image: NetworkImage(
                              "https://www.astrology.com/images-US/games/game-magic-love-ball-no-text.png"),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        splashColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        child: Text(
                          "Lucky",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50, top: 10, left: 50),
                  width: 250,
                  height: 150,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  color: Colors.white,
                  child: TextField(
                    controller: suerteController,
                    minLines: 3,
                    maxLines: 5,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Suerte",
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
