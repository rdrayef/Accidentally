import 'package:flutter/material.dart';

import '../colors.dart';
import 'cercle.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 0.2),
      // It will cover 20% of our total height
      height: size.height * 0.34,
      child: Stack(
        children: <Widget>[
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
                      child: Text('23 , janvier 2021 ',
                          style: TextStyle(color: griscolor)),
                    ),
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
                        'Bienvenu,Sophia ',
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
