import 'package:flutter/material.dart';
import './chat.dart';
import './review.dart';
import 'package:gawla/data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class TourGuide {
  String profileID;
  String email;
  String name;
  String password;
  String nationality;
  int age;
  bool gender; //0 female / 1 male
  String phoneNumber;
  String experience;
  double rating;
  String displayPicture;
  List<String> languages;
  List<Chat> chats;
  int since;
  String bio;
  List<Review> reviews;

  TourGuide(
      {@required this.profileID,
      @required this.email,
      @required this.name,
      @required this.password,
      @required this.nationality,
      @required this.age,
      @required this.gender,
      @required this.phoneNumber,
      this.experience,
      @required this.languages,
      this.since,
      this.bio,
      this.rating,
      this.displayPicture,
      this.chats,
      this.reviews});

  String getTouristImageByID(BuildContext context, String id) {
    return Provider.of<Data>(context)
        .dummyTourists
        .where((tourist) {
          return tourist.profileID == id;
        })
        .toList()[0]
        .displayPicture;
  }
}
