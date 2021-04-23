/// Flutter code sample for DropdownButton

// This sample shows a `DropdownButton` with a large arrow icon,
// purple text style, and bold purple underline, whose value is one of "One",
// "Two", "Free", or "Four".
//

import 'package:flutter/material.dart';

/// This is the main application widget.
class drpdwn extends StatelessWidget {
  const drpdwn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyStatefulWidget(),
    );
  }
}

Item selectedUser;

List<Item> users = <Item>[
  const Item('Préfecture de Fès'),
  const Item('Préfecture de Meknès'),
  const Item('Province d’El Hajeb'),
  const Item('Province de Moulay Yaâcoub'),
  const Item('Province de Séfrou'),
  const Item('Province de Boulemane'),
  const Item('Province de Taounate'),
  const Item('Province de Taza'),
];

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<Item>(
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.lightBlue[900],
          size: 23.5,
        ),
        hint: Text(
          "Sélectionnez une marque",
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.lightBlue[900],
              fontWeight: FontWeight.w600),
        ),
        value: selectedUser,
        onChanged: (Item Value) {
          setState(() {
            selectedUser = Value;
          });
        },
        items: users.map((Item user) {
          return DropdownMenuItem<Item>(
            value: user,
            child: Row(
              children: <Widget>[
                Text(
                  user.name,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.lightBlue[900],
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Item {
  const Item(this.name);
  final String name;
}
