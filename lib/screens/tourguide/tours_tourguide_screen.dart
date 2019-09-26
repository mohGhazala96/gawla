import 'package:flutter/material.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';
import 'package:provider/provider.dart';

class ToursTourGuideScreen extends StatelessWidget {
  static const routeName = 'tours-tourguide-screen';

  @override
  Widget build(BuildContext context) {
    final tourguideID = MyApp.profileID;

    final tours = Provider.of<Data>(context).DUMMY_TOURS.where((tour) {
      return tour.tourguide.profileID == tourguideID;
    }).toList();

    return Center(
      child: Text('Tours Page'),
    );
  }
}
