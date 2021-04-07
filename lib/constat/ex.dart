/* import 'package:accidenyally/accueil/menu.dart/menu.dart';
import 'package:accidenyally/constat/sup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class Testscard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return StreamBuilder(
        stream: StreamGetuserdoc(context),
        builder: (context, snapshot) {
          int total = snapshot.data.documents.length;
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: new AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text("Constat",
                  style: TextStyle(color: bluecolor, fontSize: 26)),
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
                      MaterialPageRoute(builder: (context) => Accueil()),
                    );
                  }),
              bottom: PreferredSize(
                  child: Text(
                    "Vous avez déclaré $total constats ",
                    style: TextStyle(
                        fontSize: 18,
                        color: griscolor,
                        fontWeight: FontWeight.bold),
                  ),
                  preferredSize: Size.fromHeight(50)),
            ),
            body: Getcons(),
          );
        }
        );
  }
}

/* 
Widget getdecors(String type, double sheight, double swidth, String text) {
  Color colorval;
  Color stcolor;
  Color encolor;
  Image image;
  Color shcolor;
  //Image image;
  switch (type) {
    case 'pdf':
      colorval = rougecolor;
      image = Image.asset("assets/images/pdf.png");
      stcolor = rougecolor;
      encolor = Colors.pink;
      shcolor = Colors.red;
      break;
    case 'image':
      colorval = bluecolor;
      image = Image.asset("assets/images/image.png");
      stcolor = Colors.yellow[900];
      encolor = Colors.yellow[700];
      shcolor = Colors.orange;
      break;
  }
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 0),
        child: Row(
          children: [
            IconButton(
              icon: image,
              onPressed: () {},
              iconSize: 18,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: swidth * 0.35,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                size: 28,
              ),
              onPressed: () {},
            )
          ],
        ),
        height: sheight,
        width: swidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: colorval,
            gradient: LinearGradient(
                colors: [stcolor, encolor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            boxShadow: [
              BoxShadow(color: shcolor, blurRadius: 2, offset: Offset(0, 6)),
            ]),
      ),
    ],
  );
}
 */
Stream<QuerySnapshot> StreamGetuserdoc(BuildContext context) async* {
  final uid = (await FirebaseAuth.instance.currentUser()).uid;
  yield* Firestore.instance
      .collection('utilisateurs')
      .document(uid)
      .collection('constat')
      .snapshots();
}
 */
