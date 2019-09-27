import 'package:flutter/material.dart';

class Message {
  String id;
  String text;
  DateTime date;
  bool isTourist; // 1 tourist, 0 tourguide
  String sender;
  Message(
      {@required this.id,
      @required this.text,
      @required this.date,
      @required this.isTourist,
      @required this.sender});
}
