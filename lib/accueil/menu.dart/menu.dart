import 'package:accidenyally/colors.dart';
import 'package:accidenyally/constat/page_constat.dart';
import 'package:accidenyally/documents/documents.dart';
import 'package:accidenyally/notification/home.dart';
import 'package:accidenyally/parametres.dart';
import 'package:accidenyally/profile.dart';
import 'package:accidenyally/services/m_servicess.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../body.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

var _userid;
var _datn;

class _AccueilState extends State<Accueil> {
  Future<void> _getUserName() async {
    Firestore.instance
        .collection('utilisateurs')
        .document((await FirebaseAuth.instance.currentUser()).uid)
        .get()
        .then((value) {
      setState(() {
        _userid = value.data['ID_utilisateur'];
        _datn = value.data['Date_naissance'];
      });
      print(_userid);
    });
  }

  @override
  void initState() {
    _getUserName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double devwidth(BuildContext context) => MediaQuery.of(context).size.width;
    double devheight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    return Scaffold(
        body: Body(),
        appBar: AppBar(
          backgroundColor: bluecolor,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: <Widget>[
            Builder(
              builder: (context) => IconButton(
                icon: Image.asset("assets/icons/icone_menu.png"),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            Row(children: [
              IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.white, //rougggecolor
                ),
                onPressed: () {},
              ),
            ]),
            Spacer(),
            Text("ID : ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: griscolor)),
            Text(_userid),
          ],
        ),
        drawer: ClipPath(
          clipper: Drawermenu(),
          child: Drawer(
            child: Container(
              color: bluecolor,
              child: Column(
                children: <Widget>[
                  // const EdgeInsets.only(bottom: 24.0),
                  ListTile(
                    leading: Icon(Icons.people, color: Colors.white),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Profile',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => profilepage(),
                          ))
                    },
                  ),
                  ListTile(
                    leading:
                        Image.asset("assets/icons/icons8-dupliquer-24.png"),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Constats',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Constat(),
                          ))
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                        "assets/icons/icons8-document-statistique-24.png"),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Documents',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Documents(),
                          ))
                    },
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/icons8-service-24.png"),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Services',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Servicess(),
                          ))
                    },
                  ),
                  //ooooooooooooooooooooooooooooooooooooooooooooo
                  ListTile(
                    leading:
                        Icon(Icons.notifications_active, color: Colors.white),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Notificatio(),
                          ))
                    },
                  ),
                  //oooooooooooooooooooooooooooooooooooooooooooooooooo
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                    title: Text(
                      'Paramètres',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Parametres(),
                          ))
                    },
                  ),
                  Container(
                    padding: new EdgeInsets.only(top: 40.0),
                    alignment: FractionalOffset(0.9, 12),
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            // bottomNavigationBar: MyBottomNavBar(),
          ),
        ));
  }
}

class Drawermenu extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);

    path.quadraticBezierTo(0, 100, 0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
