import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/tour.dart';

class SearchBar extends StatefulWidget {
  static List<dynamic> filteredList;
  final List<Tour> tourList;
  SearchBar(this.tourList) {
    filteredList = this.tourList;
  }

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            SearchBar.filteredList = widget.tourList
                .where((item) => item.location
                    .toString()
                    .toLowerCase()
                    .contains(search.toLowerCase()))
                .toList();
            print(SearchBar.filteredList);
          })
        },
      ),
    );
  }
}
