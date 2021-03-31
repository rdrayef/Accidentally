import 'package:accidenyally/accueil/menu.dart/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'boutton.dart';
import 'inscription.dart';

class Lgn extends StatefulWidget {
  @override
  _LgnState createState() => _LgnState();
}

class _LgnState extends State<Lgn> {
  void initState() {
    super.initState();
  }

  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    _emailcontroller.dispose();

    _passwordcontroller.dispose();

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
                                  child: TextFormField(
                                      controller: _emailcontroller,
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        hintText: "exemple@gmail.com",
                                        hintStyle:
                                            TextStyle(color: Colors.black12),
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                      // ignore: missing_return
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Remplir le champ';
                                        }
                                      }),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.indigo[900]))),
                                  child: TextFormField(
                                    controller: _passwordcontroller,
                                    decoration: InputDecoration(
                                      labelText: "Mot de passe",
                                      hintStyle: TextStyle(color: Colors.black),
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),

                                    // ignore: missing_return
                                    /* validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Remplir le champ';
                                        } */
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 50),
                                  child: Container(
                                    child: RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          'Login',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () async {
                                          // if (_formkey.currentState.validate()) {
                                          var result = await FirebaseAuth
                                              .instance
                                              .signInWithEmailAndPassword(
                                                  email: _emailcontroller.text,
                                                  password:
                                                      _passwordcontroller.text);
                                          if (result != null) {
                                            print('Welcome');
                                            print(
                                                "==================================");
                                            print(result.displayName);
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomeScreen()));
                                          } else {
                                            print('user not found');
                                          }
                                        }
                                        // },
                                        ),
                                  ),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  nscription(),
                                            ));
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
      ),
    );
  }
}
