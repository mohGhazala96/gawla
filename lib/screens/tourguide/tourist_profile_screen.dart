import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gawla/widgets/diagonally_cut_colored_image.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

// ADD FONTS TO TEXTS

class TourGuideTouristProfileScreen extends StatelessWidget {
  static const routeName = 'tourguide-tourist-profile-screen';

  Widget buildDiagonalImageBackground(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return new DiagonallyCutColoredImage(
      new Image.asset(
        'images/img6.png',
        width: screenWidth,
        height: 280.0,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tourists =
        Provider.of<Data>(context).DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == touristId;
    }).toList();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: MenuDrawer(),
        backgroundColor: Colors.amber,
        body: Container(
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 17),
                  child: GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState.openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                                style: BorderStyle.solid,
                              )),
                          child: CircleAvatar(
                            radius: 44,
                            backgroundColor: Colors.amber,
                            backgroundImage: AssetImage('images/karim.jpg'),
                          ),
                        ),
                        SizedBox(
                          width: 8.15,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Alexander Olav',
                              style: TextStyle(fontSize: 24.0),
                            ),
                            Text(
                              'Joined Since 2019',
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Divider(
                      thickness: 2.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Nationality:',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Text(
                          'Norwegian',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        SizedBox(
                          child: Image.asset('images/country_flag.png'),
                          height: 40.0,
                          width: 40.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gender:',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 92.0,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Languages:',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 62.0,
                        ),
                        Text(
                          'Norwegian, English',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Age:',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 121.0,
                        ),
                        Text(
                          '27',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Phono No. :',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text(
                          '+20 01015740042',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            FlutterOpenWhatsapp.sendSingleMessage(
                                '0201226110046', '');
                          },
                          child: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 30.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}

//Stack(
//children: <Widget>[
//_buildDiagonalImageBackground(context),
//new Align(
//alignment: FractionalOffset.bottomCenter,
//heightFactor: 1.4,
//child: new Column(
//children: <Widget>[
//_buildAvatar(),
//_buildFollowerInfo(textTheme),
//_buildActionButtons(theme),
//],
//),
//),
//new Positioned(
//top: 26.0,
//left: 4.0,
//child: new BackButton(color: Colors.white),
//),
//],
//);
