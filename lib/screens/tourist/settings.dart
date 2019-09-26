import 'package:flutter/material.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class ToursitSettingsScreen extends StatelessWidget {
  static const routeName = '/tourist-profile-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tourists =
        Provider.of<Data>(context).DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == touristId;
    }).toList();

    return Center(
      child: Text('Tourist Settings page'),
    );
  }
}
