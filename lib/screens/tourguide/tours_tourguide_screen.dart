import 'package:flutter/material.dart';
import 'package:gawla/widgets/TourItem.dart';
import 'package:provider/provider.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';

class ToursTourGuideScreen extends StatelessWidget {
  static const routeName = 'tours-tourguide-screen';

@override
  Widget build(BuildContext context) {
    final tourGuideId = MyApp.profileID;
    final tours = Provider.of<Data>(context).DUMMY_TOURS.where((tour) {
      return tour.tourguide==tourGuideId;
    }).toList();
    print("hi");

print(tours);
    return Scaffold(
        body: new Column(children: <Widget>[
      Row(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text('My Tours',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
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
                  "true"),
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
