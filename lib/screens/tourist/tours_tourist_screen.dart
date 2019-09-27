import 'package:flutter/material.dart';
import 'package:gawla/widgets/TourItem.dart';
import 'package:provider/provider.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';
import 'tourist_homepage_screen.dart';

class ToursTouristScreen extends StatelessWidget {
  static const routeName = 'tours-tourist-screen';

  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    final tours = Provider.of<Data>(context).DUMMY_TOURS.where((tour) {
      return tour.tourists.contains(touristId);
    }).toList();

    return Scaffold(
        body: new Column(children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, top: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ToursitHomePage()));
                  },
                  child: Icon(Icons.arrow_back_ios,
                      color: Colors.black, size: 35.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text('My Bookings',
                style: TextStyle(
                    fontSize: 20,
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
