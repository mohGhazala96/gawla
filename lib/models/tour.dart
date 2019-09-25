import 'package:flutter/material.dart';
import 'tourguide.dart';
import 'tourist.dart';

class Tour {
  String tourID;
  String name;
  TourGuide tourguide;
  List<Tourist> tourists;
  DateTime date;
  String location;
  List<String> places;
  String description;
  String meetingPoint; 
  String language;
  int price;
  int peopleAllowed;
  List<Image> pictures;

  Tour({
    @required this.tourID,
    @required this.name,
    @required this.tourguide,
    this.tourists,
    @required this.date,
    @required this.location,
    @required this.places,
    @required this.description,
    @required this.meetingPoint,
    @required this.language,
    @required this.price,
    this.peopleAllowed,
    @required this.pictures,
  });
}
