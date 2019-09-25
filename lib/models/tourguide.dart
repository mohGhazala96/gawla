import 'package:flutter/material.dart';
import './chat.dart';

class TourGuide {
  String profileID;
  String name;
  String password;
  String nationality;
  int age;
  bool gender; //0 female / 1 male
  String phoneNumber;
  String experience;
  int rating;
  Image displayPicture;
  List<String> languages;
  List<Chat> chats;


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
      this.rating,
      this.displayPicture,
      this.chats});
}
