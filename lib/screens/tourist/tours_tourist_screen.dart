import 'package:flutter/material.dart';
import '../../models/tour.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';
import 'package:provider/provider.dart';
import '../../widgets/TourItem.dart';

class ToursTouristScreen extends StatelessWidget {
  static const routeName = 'tours-tourist-screen';

  

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tours = Provider.of<Data>(context).DUMMY_TOURS.where((tour) {
      return tour.tourists.contains(touristId);
    }).toList();

    return Scaffold(
      body: GridView(
      padding: const EdgeInsets.only(right:20,left:20,top:30,bottom:0),
      children: tours
          .map(
            (tourData) => TourItem(
              tourData.tourID,
              tourData.name,
              tourData.pictures[0],
              tourData.peopleAllowed,
              tourData.price
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    ));
  }
}
