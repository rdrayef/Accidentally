import 'dart:io';
import 'dart:ui';
import 'package:accidenyally/accueil/menu.dart/menu.dart';
import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  @override
  _profilepageState createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigo[900],
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              color: Colors.indigo[900],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Modifier le Profile",
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  color: Colors.indigo[50],
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 115,
                            width: 115,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/images.jpg"),
                            ),
                          ),
                          Positioned(
                            bottom: 20.0,
                            right: 20.0,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: ((Builder) => bottomsheet()),
                                );
                              },
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                                size: 28.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.border_color,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "Nom",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "ALAOUI",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "PRENOM",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Sophia",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "CIN",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "CD345678",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "EMAIL",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Sophia.Alaoui@gmail.com",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "MOT DE PASSE",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "************",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.date_range,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "DATE NAISSANCE",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "31/05/1990",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelText: "ADRESSE",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "RUE ADARISSA",
                  hintStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text("choose profile photos",
              style: TextStyle(
                fontSize: 20.0,
              )),
          SizedBox(
            height: 20.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {},
              label: Text("camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {},
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }
}
