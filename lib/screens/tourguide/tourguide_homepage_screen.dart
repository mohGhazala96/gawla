import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import 'package:gawla/screens/tourguide/add_tour_screen.dart';
import 'package:gawla/screens/tourguide/tours_tourguide_screen.dart';
import 'package:gawla/screens/tourist/tours_search_screen.dart';
import 'package:gawla/screens/tourist/tours_tourist_screen.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class ToursGuideHomePageScreen extends StatefulWidget {
  static const routeName = 'tourguide-homepage-screen';

  @override
  _ToursGuideHomePageScreenState createState() => _ToursGuideHomePageScreenState();
}

class _ToursGuideHomePageScreenState extends State<ToursGuideHomePageScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final tourGuideId = MyApp.profileID;

    final tourguide =
        Provider.of<Data>(context).DUMMY_TOURGUIDES.where((tourGuide) {
      return tourGuide.profileID == tourGuideId;
    }).toList();

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
              TabData(iconData: Icons.add, title: "Add"),
              TabData(iconData: Icons.event, title: "My Bookings")
            ],
            onTabChangedListener: (position) {
              setState( () {
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
              : MyApp.globalIndexPage  == 1 ? AddTour() : ToursTourGuideScreen(),
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
