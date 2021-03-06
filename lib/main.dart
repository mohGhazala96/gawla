import 'package:flutter/material.dart';
import 'package:gawla/screens/tourguide/tourist_profile_screen.dart';
import 'package:gawla/screens/tourist/settings.dart';
import './screens/tourguide/tour_tourguide_detailed_screen.dart';
import './screens/tourist/tour_tourist_detailed_screen.dart';
import './screens/tourguide/add_tour_screen.dart';
import './screens/common/chat_screen.dart';
import './screens/common/inbox_screen.dart';
import './screens/tourist/search_screen.dart';
import './screens/common/signin_screen.dart';
import './screens/common/FAQ.dart';
import './screens/tourguide/signup_tourguide_screen.dart';
import './screens/tourist/signup_tourist_screen.dart';
import './screens/tourguide/tourguide_homepage_screen.dart';
import './screens/tourguide/tourguide_profile_screen.dart';
import './screens/tourist/tourist_homepage_screen.dart';
import './screens/tourist/tourist_profile_screen.dart';
import './screens/tourguide/tours_tourguide_screen.dart';
import './screens/tourist/tours_tourist_screen.dart';
import './screens/tourist/tourguide_profile_screen.dart';
import 'package:provider/provider.dart';
import 'package:gawla/data/DUMMYDATA.dart';
import './screens/tourist/tours_search_screen.dart';
import 'package:flutter/services.dart';
import './screens/tourguide/tourist_profile_screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String profileID = "1TourGuide";
  static int globalIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
        builder: (context) => Data(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gawla',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            accentColor: Colors.amber,
            canvasColor: Color(0xffFECC33),
            cardColor: Colors.amber,
            fontFamily: 'Poppins',
            textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                title: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10),
                subtitle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                )),
          ),
          // home: CategoriesScreen(),
          initialRoute: "/", // default is '/'
          routes: {
            '/': (ctx) => SignIn(),
            FAQScreen.routeName: (ctx) => FAQ(),
            AddTourScreen.routeName: (ctx) => AddTour(),
            ChatScreen.routeName: (ctx) => ChatScreen(),
            InboxScreen.routeName: (ctx) => InboxScreen(),
            SearchToursScreen.routeName: (ctx) => SearchToursScreen(),
            SignUpTourGuideScreen.routeName: (ctx) => SignUpTourGuideScreen(),
            SignUpTouristScreen.routeName: (ctx) => SignUpTouristScreen(),
            TourTourGuideDetailedScreen.routeName: (ctx) =>
                TourTourGuideDetailedScreen(),
            TouristTourguideProfileScreen.routeName: (ctx) =>
                TouristTourguideProfileScreen(),
            TourTouristDetailedScreen.routeName: (ctx) =>
                TourTouristDetailedScreen(),
            ToursGuideHomePageScreen.routeName: (ctx) =>
                ToursGuideHomePageScreen(),
            TourGuideTourGuideProfileScreen.routeName: (ctx) =>
                TourGuideTourGuideProfileScreen(),
            ToursSearchScreen.routeName: (ctx) => ToursSearchScreen(),
            TouristHomePageScreen.routeName: (ctx) => TouristHomePage(),
            TouristProfileScreen.routeName: (ctx) => TouristProfileScreen(),
            ToursTouristScreen.routeName: (ctx) => ToursTouristScreen(),
            ToursTourGuideScreen.routeName: (ctx) => ToursTourGuideScreen(),
            SettingsScreen.routeName: (ctx) => SettingsScreen(),
            TourGuideTouristProfileScreen.routeName: (ctx) =>
                TourGuideTouristProfileScreen()
          },

          onUnknownRoute: (settings) {
            return MaterialPageRoute(
              builder: (ctx) => SignIn(),
            );
          },
        ));
  }
}
