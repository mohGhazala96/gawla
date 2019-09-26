import 'package:flutter/material.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class TourTourGuideDetailedScreen extends StatelessWidget {
  static const routeName = '/tour-tourguide-detailed-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final tourID = routeArgs['tourID'];

    final tourDertailed = Provider.of<Data>(context).DUMMY_TOURS.where((tour) {
      return tour.tourID == tourID;
    }).toList();

    return Center(
      child: Text('Tour detailed Page'),
    );
  }
}
