import 'package:flutter/material.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class TourGuideProfileScreen extends StatelessWidget {
  static const routeName = 'tourguide-profile-screen';

  @override
  Widget build(BuildContext context) {
    final touristGuideId = MyApp.profileID;

    final profile =
        Provider.of<Data>(context).DUMMY_TOURGUIDES.where((tourist) {
      return tourist.profileID == touristGuideId;
    }).toList();

    return Center(
      child: Text('TourGuide Profile Page'),
    );
  }
}
