import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            _mediaStack("assets/images/pdf.png", Colors.red, "Fichiers PDF",
                "12 objets", Colors.red[900], Icons.east_rounded, Colors.white),
            SizedBox(
              width: 12,
            ),
            _mediaStack(
                "assets/images/image.png",
                Colors.deepPurple[800],
                "Images",
                "53 objets",
                Colors.deepPurple,
                Icons.east_rounded,
                Colors.white),
            SizedBox(
              width: 12,
            ),
            _mediaStack(
                "assets/images/illustration.png",
                Colors.orange[400],
                "Illustrations",
                "15 objets",
                Colors.orange,
                Icons.east_rounded,
                Colors.white),
          ],
        ),
      ),
    );
  }
}

void newMethod() {}

Widget _mediaStack(String image, Color color, String media, String item,
    Color shadow, IconData icon, Color iconcolor) {
  return Stack(
    children: <Widget>[
      Opacity(
        opacity: 0.9,
        child: Container(
          height: 177,
          width: 168,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      Positioned(
        top: 25,
        left: 10,
        child: Opacity(
          opacity: 1,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                new BoxShadow(
                    color: shadow, offset: Offset(2.0, 5.0), blurRadius: 18.0),
              ],
            ),
            child: Image.asset(image),
            height: 40,
          ),
        ),
      ),
      Positioned(
        top: 82,
        left: 15,
        child: Column(
          children: [
            Text(
              media + "\n" + "\n" + item,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: 125,
        left: 130,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(icon, color: iconcolor),
            ),
          ],
        ),
      ),
    ],
  );
}
