import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gawla/data/DUMMYDATA.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class TouristTourguideProfileScreen extends StatelessWidget {
  static const routeName = 'tourist-tourguide-profile-screen';
  int count = 0;

  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 100));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final tourguideId = routeArgs['id'];

    final tourguide =
        Provider.of<Data>(context).dummyTourGuides.where((tourguide) {
      return tourguide.profileID == tourguideId;
    }).toList()[0];

    String getRating(int rating) {
      if (rating == 1) {
        return '★';
      } else if (rating == 2) {
        return '★★';
      } else if (rating == 3) {
        return '★★★';
      } else if (rating == 4) {
        return '★★★★';
      } else {
        return '★★★★★';
      }
    }

    List<Card> mapReviewsToCards() {
      List<Card> cards = [];
      for (int i = 0; i < tourguide.reviews.length; i++) {
        cards.add(
          Card(
            elevation: 15.0,
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage(tourguide.getTouristImageByID(
                          context, tourguide.reviews[i].reviewerID)),
                    ),
                  ),
                  title: Text(
                      '${Provider.of<Data>(context).getUserName(tourguide.reviews[i].reviewerID)}  ${getRating(tourguide.reviews[i].rate)}'),
                  subtitle: Text(tourguide.reviews[i].review),
                ),
              ],
            ),
          ),
        );
      }
      return cards;
    }

    List<Widget> listOfLanaguges = new List<Widget>();
    for (var i = 0; i < tourguide.languages.length; i++) {
      if (i >= tourguide.languages.length - 1) {
        listOfLanaguges.add(new Text(
          tourguide.languages[i],
          style: TextStyle(fontSize: 16.0),
        ));
      } else {
        listOfLanaguges.add(new Text(
          tourguide.languages[i] + ",",
          style: TextStyle(fontSize: 16.0),
        ));
      }
    }
    var flagCode = "eg";
    switch (tourguide.nationality) {
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
        key: scaffoldKey,
        backgroundColor: Colors.amber,
        body: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(children: <Widget>[
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
                          backgroundImage: AssetImage(tourguide.displayPicture),
                        ),
                      ),
                      SizedBox(
                        width: 8.15,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            tourguide.name,
                            style: TextStyle(fontSize: 24.0),
                          ),
                          Text(
                            'Gawal Since 2019',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rating ',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                  letterSpacing: 1.5,
                                ),
                              ),
                              Text(
                                tourguide.rating.toString(),
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 15.0,
                              )
                            ],
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'BIO',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    tourguide.experience,
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
                        tourguide.nationality.toUpperCase(),
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      SizedBox(
                        child: Image.asset('images/flags/' + flagCode + '.png'),
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
                        tourguide.gender ? 'MALE' : 'FEMALE',
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
                      new Row(children: listOfLanaguges),
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
                        tourguide.age.toString(),
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
                        'Phone No. :',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
//                        Text(
//                          '+20 01015740042',
//                          style: TextStyle(fontSize: 16.0),
//                        ),
//                        SizedBox(
//                          width: 10.0,
//                        ),
                      GestureDetector(
                        onTap: () {
                          FlutterOpenWhatsapp.sendSingleMessage(
                              tourguide.phoneNumber, '');
                        },
                        child: Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                          size: 40.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 56.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'REVIEWS',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: mapReviewsToCards(),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
