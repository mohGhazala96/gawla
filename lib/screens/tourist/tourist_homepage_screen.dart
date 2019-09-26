import 'package:flutter/material.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'tourist_profile_screen.dart';
import 'tours_tourist_screen.dart';
import 'package:provider/provider.dart';

class ToursitHomePageScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = '/tourist-homepage-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;


    final tourist = Provider.of<Data>(context).DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == touristId;
    }).toList();

    return Scaffold(
      drawer: MenuDrawer(),
      key: _scaffoldKey,
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 25, left: 10),
                child: GestureDetector(
                  onTap: () {
                     _scaffoldKey.currentState.openDrawer();
                  },
                  child: Icon(Icons.menu),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Text("Gawla",
                    style: TextStyle(
                        letterSpacing: 5,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ToursTouristScreen.routeName);
                      },
                      child: Icon(
                        Icons.search,
                        size: 50,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ToursitProfileScreen.routeName);
                      },
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
