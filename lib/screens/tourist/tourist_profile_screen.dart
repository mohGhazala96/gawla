import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';
import 'package:gawla/widgets/diagonally_cut_colored_image.dart';

// ADD FONTS TO TEXTS

class TouristProfileScreen extends StatelessWidget {
  static const routeName = 'tourist-tourist-profile-screen';

  @override
  Widget build(BuildContext context) {
    var flagCode = "eg";
    final touristId = MyApp.profileID;
    final tourist = Provider.of<Data>(context).dummyTourists.where((tourist) {
      return tourist.profileID == touristId;
    }).toList()[0];

    switch (tourist.nationality) {
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
      case 'Kenyan':
        flagCode = 'ke';
        break;
      case 'turkish':
        flagCode = 'tr';
        break;
    }

    return SafeArea(
      child: Scaffold(
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
                            backgroundImage: AssetImage(tourist.displayPicture),
                          ),
                        ),
                        SizedBox(
                          width: 8.15,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              tourist.name,
                              style: TextStyle(fontSize: 24.0),
                            ),
                            Text(
                              'Joined since 2019',
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
                          tourist.nationality,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 45.0,
                          height: 55,
                        ),
                        SizedBox(
                          child:
                              Image.asset('images/flags/' + flagCode + '.png'),
                          height: 50.0,
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
                          tourist.gender ? 'Male' : 'Female',
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
                          tourist.age.toString(),
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
                          'Phono Number:',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          '${tourist.phoneNumber}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
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
