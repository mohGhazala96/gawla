import 'package:flutter/material.dart';
import 'package:gawla/screens/common/searchbar.dart';
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
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 40,
      margin: EdgeInsets.only(top: 30),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(),
          icon: Icon(Icons.search),
          hintText: 'Search for an area',
        ),
        onChanged: (search) => {
          setState(() {
            // SearchBar.filteredList = widget
            //     .where((item) => item.location
            //         .toString()
            //         .toLowerCase()
            //         .contains(search.toLowerCase()))
            //     .toList();
            // print(SearchBar.filteredList);
          })
        },
      ),
    ),
        Expanded(
          child: GridView(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 0),
            children: tours
                .map(
                  (tourData) => TourItem(
                      tourData.tourID,
                      tourData.name,
                      tourData.pictures[0],
                      tourData.peopleAllowed,
                      tourData.price,"false"),
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
      ]
    ));
  }
}
