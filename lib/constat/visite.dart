import 'package:accidenyally/constat/page_constat.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class Boddy extends StatefulWidget {
  @override
  _BoddyState createState() => _BoddyState();
}

class _BoddyState extends State<Boddy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Notifications",
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
                MaterialPageRoute(builder: (context) => Constat()),
              );
            }),
      ),
      body: Contenu(),
    );
  }
}

class Contenu extends StatefulWidget {
  @override
  _ContenuState createState() => _ContenuState();
}

class _ContenuState extends State<Contenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 75.0, left: 5),
        child: Column(
          children: [
            Row(
              children: [Container()],
            )
          ],
        ),
      ),
    );
  }
}
/*
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.indigo[900], Colors.indigo[900]]),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 60,
            ),
            child: Image.asset(
              'assets/images/Groupe 66.png',
              height: 300,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.indigo[900]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "ex:ibtissam.eljounahi@gmail.com",
                                    hintStyle: TextStyle(color: Colors.black),
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.indigo[900]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Mot de passe",
                                    hintStyle: TextStyle(color: Colors.black),
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  obscureText: true,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 50),
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 8),
                                child: FlatButton(
                                  onPressed: (null),
                                  child: Text(
                                    "Mot de passe oublié?",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('logine');
                                    },
                                    child: Text(
                                      "Créer un nouveau compte",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 19,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
