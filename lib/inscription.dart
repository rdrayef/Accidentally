import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'boutton.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  void initState() {
    var uuid = Uuid();
    var v4_crypto = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
    super.initState();
    _idcontroller.text = v4_crypto.substring(0, 8);
  }

  final _formkey = GlobalKey<FormState>();
  TextEditingController _idcontroller = TextEditingController();
  void dispose() {
    _idcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.indigo[900], Colors.indigo[900]]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 3,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Inscription",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "inscris vous maintenant!",
                    style: TextStyle(color: Colors.white24, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
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
                                  child: TextFormField(
                                    readOnly: true,
                                    controller: _idcontroller,
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      labelText: "ID",
                                      /* hintText: v4_crypto.substring(0, 8), */
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
                                      labelText: "Nom",
                                      hintText: "saisi votre nom de famille",
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
                                      labelText: "prénom",
                                      hintText: "saisi votre prénom",
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
                                      labelText: "CIN",
                                      hintText: "saisi votre CIN",
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
                                      labelText: "Email",
                                      hintText:
                                          "ex:ibtissam.eljounahi@gmail.com",
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
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.indigo[900]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Date Naissance",
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
                                      labelText: "Adresse",
                                      hintText:
                                          "ex:ibtissam.eljounahi@gmail.com",
                                      hintStyle: TextStyle(color: Colors.black),
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 50),
                                  child: Container(
                                    child: orgbutton(
                                      text: "Envoyer",
                                      textColors: Colors.white,
                                      bgcolor: Colors.indigo[900],
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
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
      ),
    );
  }
}
