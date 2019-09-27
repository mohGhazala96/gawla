import 'package:flutter/material.dart';
import './chat.dart';
import './review.dart';

class TourGuide {
  String profileID;
  String name;
  String password;
  String nationality;
  int age;
  bool gender; //0 female / 1 male
  String phoneNumber;
  String experience;
  double rating;
  Image displayPicture;
  List<String> languages;
  List<Chat> chats;
  int since;
  String bio;
  List<Review> reviews;

  TourGuide(
      {@required this.profileID,
      @required this.name,
      @required this.password,
      @required this.nationality,
      @required this.age,
      @required this.gender,
      @required this.phoneNumber,
      @required this.experience,
      @required this.languages,
      @required this.since,
      @required this.bio,
      this.rating,
      this.displayPicture,
      this.chats,
      this.reviews});
}
