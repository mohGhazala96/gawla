import 'package:flutter/material.dart';
import 'package:gawla/screens/tourist/settings.dart';

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
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ToursitProfileScreen()));
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
                    Navigator.pushNamed(
                        context, ToursitSettingsScreen.routeName);
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
            ],
          ),
        ),
      ),
    );
  }
}
