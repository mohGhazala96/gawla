import 'package:flutter/material.dart';
import 'package:gawla/screens/tourguide/tour_tourguide_detailed_screen.dart';
import '../screens/tourist/tour_tourist_detailed_screen.dart';
import '../widgets/greystripe.dart';

class TourItem extends StatelessWidget {
  final String tourID;
  final String tourName;
  final String displayImage;
  final int numberOfPeople;
  final int price;
  final String isBooked;
  final bool isTourist;

  TourItem(this.tourID, this.tourName, this.displayImage, this.numberOfPeople,
      this.price, this.isBooked, this.isTourist);

  void selectCategory(BuildContext ctx) {
    print(displayImage);
    if (this.isTourist)
      Navigator.of(ctx).pushNamed(
        TourTouristDetailedScreen.routeName,
        arguments: {
          'tourID': tourID,
          'tourname': tourName,
          'image': displayImage,
          'isbooked': isBooked
        },
      );
    else {
      Navigator.of(ctx).pushNamed(
        TourTourGuideDetailedScreen.routeName,
        arguments: {
          'tourID': tourID,
          'tourname': tourName,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(1.2),
        child: Stack(children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: Image.asset(
              displayImage,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            child: GreyStripe(
              capacity: numberOfPeople,
              price: price,
              title: tourName,
            ),
            alignment: Alignment(0.0, 1.0),
          ),
        ]),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
