import 'package:flutter/material.dart';
import 'tourguide.dart';
import 'tourist.dart';
import 'package:gawla/models/message.dart';

class Tour {
  String tourID;
  String name;
  String tourguide;
  String tourguideName;
  List<String> tourists;
  String date;
  String location;
  List<String> places;
  String description;
  String meetingPoint;
  String language;
  int price;
  int peopleAllowed;
  List<String> pictures;
  double rating;
  String tourGuidePic;
  List<Message> messages;
  List<String> touristsPictures;

  Tour(
      {@required this.tourID,
      @required this.name,
      @required this.tourguide,
      this.tourguideName,
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
      this.rating,
      this.tourGuidePic,
      this.messages,
      this.touristsPictures});
}
