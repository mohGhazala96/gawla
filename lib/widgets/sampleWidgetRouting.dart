import 'package:flutter/material.dart';
import '../screens/tourist/tours_tourist_screen.dart';

class SampleItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  SampleItem(this.id, this.title, this.color);

  void selectItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ToursTouristScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  Widget build(BuildContext context) {
    return InkWell();
  }
}
