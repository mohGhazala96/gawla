import 'package:flutter/material.dart';
import '../../models/tour.dart';
import '../../data/DUMMYDATA.dart';
import '../../main.dart';
import 'package:provider/provider.dart';
import '../../widgets/TourItem.dart';

class ToursSearchScreen extends StatefulWidget {
  static const routeName = '/tours-search-tourist-screen';

  @override
  _ToursSearchScreenState createState() => _ToursSearchScreenState();
}

class _ToursSearchScreenState extends State<ToursSearchScreen> {
  @override
  Widget build(BuildContext context) {
    final touristId = MyApp.profileID;
    print(touristId);
    final tours = Provider.of<Data>(context).DUMMY_TOURS;
    List<Tour> viewList = List.of(tours);

    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 40,
        margin: EdgeInsets.only(top: 30),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search by location...",
            contentPadding: EdgeInsets.all(7.5),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(15.0)),
            icon: Icon(
              Icons.search,
              color: Color(0xff707070),
            ),
          ),
          onChanged: (search) => {
            viewList = tours
                .where((item) => item.location
                    .toString()
                    .toLowerCase()
                    .contains(search.toLowerCase()))
                .toList(),
            Provider.of<Data>(context).updateDummyData(viewList),
            print(viewList)
          },
        ),
      ),
      Expanded(
        child: GridView(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 0),
          children: Provider.of<Data>(context)
              .DUMMY_VIEW_TOURS
              .map(
                (tourData) => TourItem(
                    tourData.tourID,
                    tourData.name,
                    tourData.pictures[0],
                    tourData.peopleAllowed,
                    tourData.price,
                    "false",
                    true),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    ]));
  }
}
