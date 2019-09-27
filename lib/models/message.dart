import 'package:flutter/material.dart';

class Message {
  String id;
  String text;
  DateTime date;
  bool isTourist; // 1 tourist, 0 tourguide
  String sender;
  Message(
      {this.id,
      @required this.text,
      this.date,
      this.isTourist,
      @required this.sender});
}
