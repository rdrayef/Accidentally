import 'package:accidenyally/colors.dart';
import 'package:accidenyally/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_viewer/image_viewer.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class Mydocs extends StatefulWidget {
  @override
  _MydocsState createState() => _MydocsState();
}

class _MydocsState extends State<Mydocs> {
  var _type;
  static String pathPDF = "";
  static String pdfUrl = "";
  var file;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //return Stack(children: [getdocs(size.height, size.width)]);
  }

  Widget getdocs(double sheight, double swidth) {
    StreamBuilder(
        stream: StreamGetuserdoc(context),
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index) {
                _type = snapshot.data.documents[index]['type'];
                file = snapshot.data.documents[index]['fichier'];
                return getdecors(
                    context,
                    snapshot.data.documents[index],
                    snapshot.data.documents[index]['type'],
                    sheight * 0.09,
                    swidth * 0.9,
                    snapshot.data.documents[index]['nom_fichier']);
              });
        });
  }

  Widget getdecors(BuildContext context, DocumentSnapshot document, String type,
      double sheight, double swidth, String text) {
    Color colorval;
    Color stcolor;
    Color encolor;
    Image image;
    Color shcolor;
    //Image image;
    switch (type) {
      case 'pdf':
        colorval = rougecolor;
        image = Image.asset("assets/images/pdf.png");
        stcolor = rougecolor;
        encolor = Colors.pink;
        shcolor = Colors.red;
        break;
      case 'image':
        colorval = bluecolor;
        image = Image.asset("assets/images/image.png");
        stcolor = Colors.yellow[900];
        encolor = Colors.yellow[700];
        shcolor = Colors.orange;
        break;
    }
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 0),
              child: Row(
                children: [
                  IconButton(
                    icon: image,
                    onPressed: () {},
                    iconSize: 18,
                  ),
                  Container(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: SizedBox(
                      width: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 28,
                        ),
                        onPressed: () {
                          if (_type == 'pdf') {
                            print(_type + "=========>" + file);
                          }
                          if (_type == 'image') {
                            print(_type + "=========>" + file);
                            ImageViewer.showImageSlider(
                                images: [file, file], startingPosition: 1);
                          } else {
                            SnackBar(
                              content: Text('Format insupporté'),
                            );
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
              height: sheight,
              width: swidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: colorval,
                  gradient: LinearGradient(
                      colors: [stcolor, encolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  boxShadow: [
                    BoxShadow(
                        color: shcolor, blurRadius: 2, offset: Offset(0, 6)),
                  ]),
            ),
          ],
        ),
      ],
    );
  }

  Stream<QuerySnapshot> StreamGetuserdoc(BuildContext context) async* {
    final uid = (await FirebaseAuth.instance.currentUser()).uid;
    yield* Firestore.instance
        .collection('utilisateurs')
        .document(uid)
        .collection('pieces_jointes')
        .snapshots();
  }
}
