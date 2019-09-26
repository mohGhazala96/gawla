import 'package:flutter/material.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class ToursitHomePageScreen extends StatelessWidget {
  static const routeName = 'tourist-homepage-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;

    final tourist = Provider.of<Data>(context).DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == touristId;
    }).toList();

    return Center(
      child: Text('Toursist Home Page'),
    );
  }
}
