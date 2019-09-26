import 'package:flutter/material.dart';
import 'package:gawla/screens/common/menudrawer.dart';
import 'package:gawla/screens/tourist/tours_search_screen.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'tourist_profile_screen.dart';
import 'tours_tourist_screen.dart';
import 'package:provider/provider.dart';
import 'tourist_profile_screen.dart';

class ToursitHomePageScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = 'tourist-homepage-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;

    return Scaffold(
      drawer: MenuDrawer(),
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.25,0.5,0.75,1],
            colors: [
              Color(0xbbfe9933),
              Color(0xfffeaa33),
              Color(0xfffebb33),
              Color(0xfffecc33)
            ]
          )
        ),
        //color: Theme.of(context).primaryColor,
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
