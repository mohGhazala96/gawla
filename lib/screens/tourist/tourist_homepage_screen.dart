import 'package:flutter/material.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import 'package:gawla/screens/tourist/tours_search_screen.dart';
import 'tours_tourist_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import '../../main.dart';
class TouristHomePage extends StatefulWidget {
  @override
  TouristHomePageScreen createState() => TouristHomePageScreen();
}

class TouristHomePageScreen extends State<TouristHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = 'tourist-homepage-screen';

  @override
  Widget build(BuildContext context) {
    final String logoAssetName = 'images/logo.svg';

    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 20),
          color: Colors.black,
          child: FancyBottomNavigation(
            initialSelection:MyApp.globalIndexPage,
            barBackgroundColor: Colors.black,
            textColor: Colors.white,
            tabs: [
              TabData(iconData: Icons.home, title: "Home"),
              TabData(iconData: Icons.search, title: "Search"),
              TabData(iconData: Icons.event, title: "My Bookings")
            ],
            onTabChangedListener: (position) {
              setState(() {
                MyApp.globalIndexPage = position;
                
              });
            },
          ),
        ),
        drawer: MenuDrawer(),
        key: _scaffoldKey,
        body: Container(
          child: MyApp.globalIndexPage  == 0
              ? Column(
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
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.2,
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.3),
                        child: SvgPicture.asset(logoAssetName,
                            semanticsLabel: 'Gawla Logo'),
                      ),
                    )
                  ],
                )
              : MyApp.globalIndexPage  == 1 ? ToursSearchScreen() : ToursTouristScreen(),
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
