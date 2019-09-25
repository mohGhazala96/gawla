import 'package:flutter/material.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';

class ToursTouristScreen extends StatelessWidget {
  static const routeName = '/tours-tourist-screen';

  @override
  Widget build(BuildContext context) {

    final touristId = MyApp.profileID;
    
    final tours = DUMMY_TOURS.where((tour) {
      return tour.tourists.contains(touristId);
    }).toList();

    return Center(
      child: Text('Tours Page'),
    );
  }
}
