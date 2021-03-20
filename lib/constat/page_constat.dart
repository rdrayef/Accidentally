import 'package:accidenyally/accueil/menu.dart/menu.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import 'body.dart';

class Constat extends StatefulWidget {
  @override
  _ConstatState createState() => _ConstatState();
}

class _ConstatState extends State<Constat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            Text("Constat", style: TextStyle(color: bluecolor, fontSize: 26)),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: bluecolor,
              size: 31,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }),
        bottom: PreferredSize(
            child: Text(
              "Vous avez déclaré 2 constats ",
              style: TextStyle(
                  fontSize: 18, color: griscolor, fontWeight: FontWeight.bold),
            ),
            preferredSize: Size.fromHeight(50)),
      ),
      body: getbody(),
    );
  }
}
