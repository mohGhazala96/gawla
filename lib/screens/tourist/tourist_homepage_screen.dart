import 'package:flutter/material.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import 'package:gawla/screens/tourist/tours_search_screen.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'tourist_profile_screen.dart';
import 'tours_tourist_screen.dart';
import 'package:provider/provider.dart';
import 'tourist_profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class ToursitHomePage extends StatefulWidget {
  @override
  ToursitHomePageScreen createState() => ToursitHomePageScreen();
}

class ToursitHomePageScreen extends State<ToursitHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = 'tourist-homepage-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final String logoAssetName = 'images/logo.svg';
    int currentPage;

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.shopping_cart, title: "My Bookings")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ),
      ),
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
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.only(top: 60),
                child: SvgPicture.asset(logoAssetName,
                    semanticsLabel: 'Gawla Logo'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
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
                            context, ToursTouristScreen.routeName);
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

class SearchDialog extends StatefulWidget {
  @override
  _SearchDialogState createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  final formKey = GlobalKey<FormState>();
  String searchResult;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Search for a tour",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 5, right: 5),
                  child: TextFormField(
                      onSaved: (res) => searchResult = res,
                      decoration: InputDecoration(
                        hintText: "Search",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.amber,
                    child: Text("LEAVE IT ON US"),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
