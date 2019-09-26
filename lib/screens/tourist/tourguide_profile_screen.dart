import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: ListView(children: <Widget>[
                Column(
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
                              'Karim Hisham',
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
                                  '4.95',
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
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
                          'Egyptain',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        SizedBox(
                          child: Image.asset('images/country_flag.png'),
                          height: 50.0,
                          width: 50.0,
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
                          'Arabic, English, French',
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
                          '21',
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
                          width: 10.0,
                        ),
                        Icon(
                          FontAwesomeIcons.whatsapp,
                          size: 40.0,
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
                    Card(
                      elevation: 15.0,
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
                                backgroundImage: AssetImage('images/karim.jpg'),
                              ),
                            ),
                            title: Text('Karim Hisham  ★★★★★'),
                            subtitle: Text(
                                'Gave Me The Tour Of My Life. HIGHLY RECOMMEND!'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 15.0,
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
                                backgroundImage: AssetImage('images/karim.jpg'),
                              ),
                            ),
                            title: Text('Omar Hussein  ★★★★'),
                            subtitle: Text('Very Good Tourguide'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 15.0,
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
                                backgroundImage: AssetImage('images/karim.jpg'),
                              ),
                            ),
                            title: Text('Omar Emam  ★★★'),
                            subtitle: Text(
                                'Good Tourguide. Only problem was timings'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
