import 'package:flutter/material.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';

class ToursitProfileScreen extends StatelessWidget {
  static const routeName = '/tourist-profile-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tourists = DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID==touristId;
    }).toList();

    return Center(
      child: Text('Toursist Profile Page'),
    );
  }
}
