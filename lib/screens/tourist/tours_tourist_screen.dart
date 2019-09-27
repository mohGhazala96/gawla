import 'package:flutter/material.dart';
import 'package:gawla/widgets/TourItem.dart';
import 'package:provider/provider.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';

class ToursTouristScreen extends StatelessWidget {
  static const routeName = 'tours-tourist-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tours = Provider.of<Data>(context).dummyTours.where((tour) {
      return tour.tourists.contains(touristId);
    }).toList();
    print("aaaadd" + tours[0].name + " " + touristId);
    print("aaaadd" + tours[1].name + " " + touristId);

    return Scaffold(
        body: new Column(children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text('My Bookings',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
      new Expanded(
          child: GridView(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 0),
        children: tours
            .map(
              (tourData) => TourItem(
                  tourData.tourID,
                  tourData.name,
                  tourData.pictures[0],
                  tourData.peopleAllowed,
                  tourData.price,
                  "true",
                  true),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ))
    ]));
  }
}
