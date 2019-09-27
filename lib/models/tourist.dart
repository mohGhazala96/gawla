import 'package:flutter/material.dart';
import './chat.dart';

class Tourist {
  String profileID;
  String name;
  String password;
  int age;
  String nationality;
  bool gender; //0 female / 1 male
  String phoneNumber;
  String displayPicture;
  List<Chat> chats;

  Tourist(
      {@required this.profileID,
      @required this.name,
      @required this.password,
      @required this.nationality,
      @required this.age,
      @required this.gender,
      @required this.phoneNumber,
      this.displayPicture,
      this.chats});
}
