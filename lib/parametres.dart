import 'package:accidenyally/accueil/menu.dart/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Parametres extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[900],
          shadowColor: Colors.transparent,
          title: Text('Paramètres',
              style: TextStyle(
                  fontSize: 25,
                  backgroundColor: Colors.transparent,
                  color: Colors.white)),
          centerTitle: true,
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              }),
        ),
        body: SettingsPage(),
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                //borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Column(
            children: [
              _buildContainer(),
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildContainer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 15),
        height: 530,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[700],
              blurRadius: 5,
            ),
          ],
        ),
        child: ListView(
          children: <Widget>[
            _items(),
          ],
        ),
      ),
    ],
  );
}

Widget _items() {
  bool istoggled = true;
  return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 8),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.redAccent[700],
              size: 30,
            ),
            title: Text(
              "Termes et conditions",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 29,
              color: Colors.deepPurple[900],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _builddivider(),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.sync,
              color: Colors.redAccent[700],
              size: 30,
            ),
            title: Text(
              "Mise à jour",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 29,
              color: Colors.deepPurple[900],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _builddivider(),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_active,
              color: Colors.redAccent[700],
              size: 30,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            trailing: FlutterSwitch(
              height: 21,
              width: 44.0,
              padding: 4.0,
              toggleSize: 16.0,
              borderRadius: 10.0,
              activeColor: Colors.deepPurple[900],
              inactiveColor: Colors.redAccent[700],
              value: istoggled,
              onToggle: (bool value) {
                setState(() {
                  istoggled = value;
                  print('btn press: $istoggled');
                });
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _builddivider(),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.flag,
              color: Colors.redAccent[700],
              size: 30,
            ),
            title: Text(
              "Langues",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 29,
              color: Colors.deepPurple[900],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _builddivider(),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.build,
              color: Colors.redAccent[700],
              size: 30,
            ),
            title: Text(
              "Types de services",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 29,
              color: Colors.deepPurple[900],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _builddivider(),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.redAccent[700],
              size: 30,
            ),
            title: Text(
              "Partager",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 29,
              color: Colors.deepPurple[900],
            ),
          ),
        ],
      ));
}

void setState(Null Function() param0) {}

Container _builddivider() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    width: double.infinity,
    height: 1,
    color: Colors.grey[300],
  );
}
