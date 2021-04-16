import 'package:accidenyally/constateur/colors.dart';
import 'package:flutter/material.dart';

class Infos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double devwidth(BuildContext context) => MediaQuery.of(context).size.width;
    double devheight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Informations conducteur",
              style: TextStyle(
                  color: bluecolor, fontSize: 23, fontWeight: FontWeight.w600)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.cancel_rounded,
                size: 30,
                color: rougggecolor,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: bluecolors2,
        body: Container(
          margin: EdgeInsets.only(top: devheight(context) * 0.025),
          child: SingleChildScrollView(
            child: Column(children: [
              Align(
                child: CircleAvatar(
                  backgroundColor: bluecolor,
                  radius: 50,
                  child: ClipOval(
                    child: SizedBox(
                      width: 100,
                      child: Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/accidentally-d3dca.appspot.com/o/user.jpg?alt=media&token=a4a11c90-990b-455b-a545-36eedd5a1213",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: devheight(context) * 0.05,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10.0,
                              color: blufanccolor.withOpacity(0.5),
                            ),
                          ],
                        ),
                        width: devwidth(context) * 0.9,
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Nom',
                            labelText: 'Nom',
                            suffixIcon: Icon(
                              Icons.person,
                              color: bluecolor,
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: blufanccolor),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: devheight(context) * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10.0,
                            color: blufanccolor.withOpacity(0.5),
                          ),
                        ],
                      ),
                      width: devwidth(context) * 0.9,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'prénom',
                          labelText: 'Prénom',
                          suffixIcon: Icon(
                            Icons.person,
                            color: bluecolor,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: blufanccolor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: devheight(context) * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10.0,
                            color: blufanccolor.withOpacity(0.5),
                          ),
                        ],
                      ),
                      width: devwidth(context) * 0.9,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'CIN',
                          labelText: 'CIN',
                          suffixIcon: Icon(
                            Icons.badge,
                            color: bluecolor,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: blufanccolor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: devheight(context) * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10.0,
                            color: blufanccolor.withOpacity(0.5),
                          ),
                        ],
                      ),
                      width: devwidth(context) * 0.9,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Adresse',
                          labelText: 'Adresse',
                          suffixIcon: Icon(
                            Icons.house,
                            color: bluecolor,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: blufanccolor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: devheight(context) * 0.035,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: devwidth(context) / 1.6,
                          right: devwidth(context) * 0.045),
                      child: SizedBox(
                          height: 50,
                          width: 120,
                          child: RaisedButton(
                            color: bluecolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {},
                            child: Icon(
                              Icons.trending_flat_rounded,
                              color: Colors.white,
                              size: 45,
                            ),
                          )),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
