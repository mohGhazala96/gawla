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
    final String logoAssetName = 'images/logo_motto.svg';
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 20),
          color: Colors.black,
          child: FancyBottomNavigation(
            initialSelection: MyApp.globalIndexPage,
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
          child: MyApp.globalIndexPage == 0
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
                    ),
                    // Opacity(
                    //   opacity: 0.9,
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height * 0.49,
                    //     width: MediaQuery.of(context).size.width * 0.9,
                    //     padding: EdgeInsets.only(top: 10, bottom: 10),
                    //     decoration: BoxDecoration(
                    //         boxShadow: [
                    //           BoxShadow(
                    //               color: Colors.black12,
                    //               offset: Offset(0, -1),
                    //               blurRadius: 13)
                    //         ],
                    //         color: Colors.white,
                    //         borderRadius: new BorderRadius.circular(15.0),
                    //         border: new Border.all(
                    //             color: Color(0xff707070), width: 0.0)),
                    //     child: SingleChildScrollView(
                    //       child: Container(
                    //           margin: const EdgeInsets.all(24.0),
                    //           child: ExpansionPanelList(
                    //             animationDuration: Duration(milliseconds: 350),
                    //             expansionCallback:
                    //                 (int index, bool isExpanded) {
                    //               setState(() {
                    //                 notifications.notifications[index]
                    //                     .isExpanded = !isExpanded;
                    //               });
                    //             },
                    //             children: <ExpansionPanel>[
                    //               ...notifications.notifications
                    //                   .map<ExpansionPanel>(
                    //                       (NotificationForDay x) {
                    //                 return ExpansionPanel(
                    //                     canTapOnHeader: true,
                    //                     isExpanded: x.isExpanded,
                    //                     headerBuilder: (context, isExpanded) {
                    //                       return Container(
                    //                         margin: EdgeInsets.only(
                    //                             left: 20, top: 10),
                    //                         child: (Text(
                    //                           x.date,
                    //                           style: TextStyle(
                    //                               color: Colors.white,
                    //                               fontWeight: FontWeight.w900,
                    //                               fontSize: 17),
                    //                         )),
                    //                       );
                    //                     },
                    //                     body: Column(
                    //                       children: <Container>[
                    //                         ...x.notificationsForDay
                    //                             .map<Container>(
                    //                                 (String notificationText) {
                    //                           return Container(
                    //                               margin: EdgeInsets.only(
                    //                                   left: 20, bottom: 20),
                    //                               child: Row(
                    //                                 children: <Widget>[
                    //                                   Icon(
                    //                                     Icons.notifications,
                    //                                     color: Colors.white,
                    //                                   ),
                    //                                   Container(
                    //                                       margin:
                    //                                           EdgeInsets.only(
                    //                                               left: 10),
                    //                                       child: Text(
                    //                                         notificationText,
                    //                                         style: TextStyle(
                    //                                             fontWeight:
                    //                                                 FontWeight
                    //                                                     .w600),
                    //                                       )),
                    //                                 ],
                    //                               ));
                    //                         })
                    //                       ],
                    //                     ));
                    //               }),
                    //             ],
                    //           )),
                    //     ),
                    //   ),
                    // )
                  ],
                )
              : MyApp.globalIndexPage == 1
                  ? ToursSearchScreen()
                  : ToursTouristScreen(),
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
