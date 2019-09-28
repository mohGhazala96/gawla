import 'package:flutter/material.dart';
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
      {this.tourID,
      @required this.name,
      this.tourguide,
      this.tourguideName,
      this.tourists,
      this.date,
      this.location,
      this.places,
      this.description,
      this.meetingPoint,
      this.language,
      this.price,
      this.peopleAllowed,
      this.pictures,
      this.rating,
      this.tourGuidePic,
      this.messages,
      this.touristsPictures});
}
