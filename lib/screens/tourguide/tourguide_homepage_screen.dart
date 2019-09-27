import 'package:flutter/material.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import 'package:gawla/screens/tourguide/add_tour_screen.dart';
import 'package:gawla/screens/tourist/tours_search_screen.dart';
import 'package:gawla/screens/tourist/tours_tourist_screen.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class ToursGuideHomePageScreen extends StatelessWidget {
  static const routeName = 'tourguide-homepage-screen';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final tourGuideId = MyApp.profileID;

    final tourguide =
        Provider.of<Data>(context).DUMMY_TOURGUIDES.where((tourGuide) {
      return tourGuide.profileID == tourGuideId;
    }).toList();

    return Scaffold(
      drawer: MenuDrawer(),
      key: _scaffoldKey,
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.bottomLeft,
        //     end: Alignment.topRight,
        //     stops: [0.25,0.5,0.75,1],
        //     colors: [
        //       Color(0xbbfe9933),
        //       Color(0xfffeaa33),
        //       Color(0xfffebb33),
        //       Color(0xfffecc33)
        //     ]
        //   )
        // ),
        // cn: Theme.of(context).primaryColor,
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
                  child: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  'GAWLA',
                  style: Theme.of(context).textTheme.title,
                ),
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
                            context, ToursSearchScreen.routeName);
                      },
                      child: Icon(
                        Icons.search,
                        size: 50,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AddTourScreen.routeName);
                      },
                      child: Icon(
                        Icons.add,
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
