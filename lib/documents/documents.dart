import 'package:accidenyally/accueil/menu.dart/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'categories.dart';

class Documents extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String espace = '1240 MB';
    /* var screenSize = MediaQuery.of(context).size;
    var swidth = screenSize.width;
    var sheight = screenSize.height; */
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text('Documents',
              style: TextStyle(
                  fontSize: 25,
                  backgroundColor: Colors.transparent,
                  color: Colors.deepPurple[900])),
          centerTitle: true,
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.deepPurple[900],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              }),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              padding: const EdgeInsets.all(10.0),
              height: 90,
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/folderempty.svg',
                    height: 80,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Espace utilisé',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        espace,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      LinearPercentIndicator(
                        width: 210,
                        lineHeight: 8.0,
                        percent: 0.4,
                        progressColor: Colors.tealAccent[400],
                        backgroundColor: Colors.white,
                        animation: true,
                        animationDuration: 2000,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Categories(),
            Column(children: [
              Row(
                children: [
                  Text(
                    "Fichiers Récents",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
