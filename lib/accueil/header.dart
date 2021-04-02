import 'package:accidenyally/profile.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import 'cercle.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class Headerf extends StatefulWidget {
/*   const Headerf({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size; */

  @override
  _HeaderfState createState() => _HeaderfState();
}

class _HeaderfState extends State<Headerf> {
/*   final _auth = FirebaseAuth.instance;
  final _firestore = Firestore.instance;
  void getdonnees() async {
    final don = await _firestore.collection('utl').getDocuments();
    for (var donn in don.documents) {
      print(donn.data);
    }
  } */

  /*  Widget getdata() {
    StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('utl').document(userid).snapshots(),
        // ignore: missing_return
        builder: (context, snapshot) {
      if (snapshot.hasData) {
        final dons = snapshot.data.documents;
        for (var inf in dons) {
          final nom = inf.data['nom'];
          final id = inf.data['id'];
        }
      }
    });
  }
 */

  final _firestore = Firestore.instance;
  final String prenom = "";
  String nom = "";
  getdonnees() async {
    final FirebaseUser user = await auth.currentUser();
    final userid = user.uid;
    await for (var snapshot
        in _firestore.collection('utilisateurs').document(userid).snapshots()) {
      /* for (var donn in snapshot.) {
        print(donn.data);
      } */
      if (snapshot != null) {
        nom = snapshot.data['Nom'];
        print(snapshot.data['Nom']);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var res;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 0.2),
      // It will cover 20% of our total height
      height: size.height * 0.34,
      child: Stack(
        children: <Widget>[
          /* 
              }) */

          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 90 + kDefaultPadding,
            ),
            height: size.height * 0.26,
            decoration: BoxDecoration(
              color: bluecolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(190),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Column(
              children: <Widget>[
                /*********************** */
                Container(
                  child: Row(children: <Widget>[
                    Container(
                        // padding: new EdgeInsets.only(top: 3.0),
                        /*  child: Text('23 , janvier 2021 ',
                          style: TextStyle(color: griscolor)), */
                        child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              getdonnees();
                            })),
                    Spacer(),
                    /*  Text('ID :xxxxxx ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: griscolor)
                            ),*/
                  ]),
                ),
                /******************** */
                Container(
                  child: Row(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(1, 0.5, 20, 0),
                      child: Text(
                        'Bienvenu,$nom ',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0.5, 0, 13),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: bluecolor,
                        borderRadius: BorderRadius.circular(80 / 2),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture.jpg")),
                      ),
                    ),
                  ]),
                ),
                /*********************** */
              ],
            ),
          ),
          //SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  /***1 */
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: bluecolor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text('Conduite',
                              style: TextStyle(color: griscolor)),
                        ),
                        Container(
                          alignment: FractionalOffset(0.2, 12),
                          child:
                              Image.asset("assets/icons/icons8-volant-26.png"),
                        ),
                        Container(child: Cerclepage(50.00)),
                      ],
                    ),
                  ),
                  /***1 */
                  /**2 */
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: bluecolor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text('Accident',
                              style: TextStyle(color: griscolor)),
                        ),
                        Container(
                            child: Image.asset(
                                "assets/icons/icons8-voiture-accidentée-24.png")),
                        Container(child: Cerclepage(30.00)),
                      ],
                    ),
                  ),
                  /***2 */
                  /**3 */
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: bluecolor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text('   Score  ',
                              style: TextStyle(color: griscolor)),
                        ),
                        Container(
                            child: Image.asset(
                                "assets/icons/icons8-étoilé-remplie-26.png")),
                        Container(child: Cerclepage(70.00)),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
