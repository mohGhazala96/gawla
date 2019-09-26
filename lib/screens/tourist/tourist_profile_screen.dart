import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';
import 'package:country_pickers/country_pickers.dart';

// ADD FONTS TO TEXTS

class TouristProfileScreen extends StatelessWidget {
  static const routeName = 'tourist-profile-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tourists =
        Provider.of<Data>(context).DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == touristId;
    }).toList();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: const EdgeInsets.all(41.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 7,
                          style: BorderStyle.solid,
                        )),
                    child: CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        child: Icon(
                          Icons.person,
                          size: 70.0,
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    width: 8.15,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Karim Hisham Attia',
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
                height: 30.0,
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Nationality:',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    'Norwegian',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Gender:',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    'Male',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Languages:',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    'Norwegian',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
