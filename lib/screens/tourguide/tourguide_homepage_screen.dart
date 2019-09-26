import 'package:flutter/material.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class ToursGuideHomePageScreen extends StatelessWidget {
  static const routeName = 'tourguide-homepage-screen';

  @override
  Widget build(BuildContext context) {
    final tourGuideId = MyApp.profileID;

    final tourguide =
        Provider.of<Data>(context).DUMMY_TOURGUIDES.where((tourGuide) {
      return tourGuide.profileID == tourGuideId;
    }).toList();

    return Center(
      child: Text('TourGuide Home Page'),
    );
  }
}
