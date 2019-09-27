import 'package:flutter/material.dart';
import 'package:gawla/main.dart';
import 'package:gawla/screens/tourguide/tourguide_profile_screen.dart';
import 'package:gawla/screens/tourist/settings.dart';
import 'package:gawla/data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

import '../tourist/tourist_profile_screen.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 17),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Provider.of<Data>(context)
                                  .isTourist(MyApp.profileID)
                              ? TouristProfileScreen()
                              : TourGuideTourGuideProfileScreen()));
                },
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, SettingsScreen.routeName);
                  },
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.white,
                ),
                onTap: () {},
                title: Text("FAQ's",
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                onTap: () {},
                title: Text("About",
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.51),
                height: 1,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  // margin: EdgeInsets.only(
                  //     top: MediaQuery.of(context).size.height * 0.52,
                  //     bottom: 1),
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                      MyApp.profileID = "";
                      print(MyApp.profileID);
                      Navigator.pushNamed(context, "/");
                    },
                    child: Text(
                      "Sign out",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
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

class MenuDrawerTourGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 17),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(
                      context, TourGuideTourGuideProfileScreen.routeName);
                },
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, SettingsScreen.routeName);
                  },
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.white,
                ),
                onTap: () {},
                title: Text("FAQ's",
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                onTap: () {},
                title: Text("About",
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.51),
                height: 1,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  // margin: EdgeInsets.only(
                  //     top: MediaQuery.of(context).size.height * 0.52,
                  //     bottom: 1),
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                      MyApp.profileID = "";
                      print(MyApp.profileID);
                      Navigator.pushNamed(context, "/");
                    },
                    child: Text(
                      "Sign out",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
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
