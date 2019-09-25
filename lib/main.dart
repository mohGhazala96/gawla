import 'package:flutter/material.dart';
import './screens/tourguide/tour_tourguide_detailed_screen.dart';
import './screens/tourist/tour_tourist_detailed_screen.dart';
import './screens/tourguide/add_tour_screen.dart';
import './screens/common/chat_screen.dart';
import './screens/common/inbox_screen.dart';
import './screens/tourist/search_screen.dart';
import './screens/common/signin_screen.dart';
import './screens/tourguide/signup_tourguide_screen.dart';
import './screens/tourist/signup_tourist_screen.dart';
import './screens/tourguide/tourguide_homepage_screen.dart';
import './screens/tourguide/tourguide_profile_screen.dart';
import './screens/tourist/tourist_homepage_screen.dart';
import './screens/tourist/tourist_profile_screen.dart';
import './screens/tourguide/tours_tourguide_screen.dart';
import './screens/tourist/tours_tourist_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String profileID;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gawla',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            )
            // title: TextStyle(
            //   fontSize: 20,
            //   fontFamily: 'RobotoCondensed',
            //   fontWeight: FontWeight.bold,
            // )
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => SignInScreen(),
        AddTourScreen.routeName: (ctx) => AddTourScreen(),
        ChatScreen.routeName: (ctx) => ChatScreen(),
        InboxScreen.routeName: (ctx) => InboxScreen(),
        SearchToursScreen.routeName: (ctx) => SearchToursScreen(),
        SignUpTourGuideScreen.routeName: (ctx) => SignUpTourGuideScreen(),
        SignUpTouristScreen.routeName: (ctx) => SignUpTouristScreen(),
        TourTourGuideDetailedScreen.routeName: (ctx) => TourTourGuideDetailedScreen(),
        TourTouristDetailedScreen.routeName: (ctx) => TourTouristDetailedScreen(),
        ToursGuideHomePageScreen.routeName: (ctx) => ToursGuideHomePageScreen(),
        TourGuideProfileScreen.routeName: (ctx) => TourGuideProfileScreen(),
        ToursitHomePageScreen.routeName: (ctx) => ToursitHomePageScreen(),
        ToursitProfileScreen.routeName: (ctx) => ToursitProfileScreen(),
        ToursTouristScreen.routeName: (ctx) => ToursTouristScreen(),
        ToursTourGuideScreen.routeName: (ctx) => ToursTourGuideScreen(),

      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => SignInScreen(),
        );
      },
    );
  }
}
