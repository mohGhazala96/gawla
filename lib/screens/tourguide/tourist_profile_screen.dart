import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final tourist = Provider.of<Data>(context).dummyTourists.where((tourist) {
      print(routeArgs['id']);
      return tourist.profileID == routeArgs['id'];
    }).toList();
    print(tourist[0].name + "aaassss");
    var flagCode = "eg";
    switch (tourist[0].nationality) {
      case 'egyptian':
        flagCode = 'eg';
        break;
      case 'american':
        flagCode = 'us';
        break;
      case 'french':
        flagCode = 'fr';
        break;
      case 'dutch':
        flagCode = 'bq';
        break;
      case 'kenyian':
        flagCode = 'ke';
        break;
      case 'turkish':
        flagCode = 'tr';
        break;
    }
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
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
                            backgroundImage:
                                AssetImage(tourist[0].displayPicture),
                          ),
                        ),
                        SizedBox(
                          width: 8.15,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              tourist[0].name,
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
                          tourist[0].nationality,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                       
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
                          tourist[0].gender ? "Male" : "Female",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
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
                          tourist[0].age.toStringAsFixed(3),
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
                          tourist[0].phoneNumber,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            FlutterOpenWhatsapp.sendSingleMessage(
                                tourist[0].phoneNumber, '');
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
