import 'package:accidenyally/constateur/Declaration/verification/Verification.dart';
import 'package:accidenyally/constateur/colors.dart';
import 'package:accidenyally/constateur/costateur_accueil.dart';
import 'package:flutter/material.dart';

class Constateur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Princi(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
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
                color: rougecolor,
              ),
              onPressed: () {},
            ),
          ]),
          Spacer(),
        ],
      ),
      drawer: ClipPath(
        clipper: Drawermenu(),
        child: Drawer(
          child: Container(
            color: Colors.deepPurple[900],
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.people, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                  title: Text(
                    'Profile',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading:
                      Icon(Icons.notifications_active, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                  title: Text(
                    'Constats',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading:
                      Icon(Icons.notifications_active, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                  title: Text(
                    'Documents',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading:
                      Icon(Icons.notifications_active, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                  title: Text(
                    'Services',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading:
                      Icon(Icons.notifications_active, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                  title: Text(
                    'Notificationss',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(80, 60.0, 0.0, 0.0),
                  title: Text(
                    'Paramétres',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
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
        ),
      ),
    );
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

class Appb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List items = ["2"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 110),
              height: 340,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(1), // ici *******
                    spreadRadius: 2,
                    blurRadius: 9,
                    offset: Offset(0, 8), // changes position of shadow
                  ),
                ],
              ),
              child: getbody(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280.0, top: 2),
              child: CircleAvatar(
                backgroundColor: bluecolor,
                radius: 30,
                child: IconButton(
                  icon: Icon(Icons.file_copy),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tst(),
                        ));
                  },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class Princi extends StatefulWidget {
  @override
  _PrinciState createState() => _PrinciState();
}

class _PrinciState extends State<Princi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          child: Text('23 , janvier 2021 ',
                              style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Spacer(),
                    ]),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            child: Text(
                              'Bienvenu,Sophia ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Container(
                            //  margin: const EdgeInsets.fromLTRB(20, 0.5, 0, 13),
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(80 / 2),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture.jpg")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Appb(),
        ],
      ),
    );
  }
}
/*********************************************** */
