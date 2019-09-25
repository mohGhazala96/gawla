import 'package:flutter/material.dart';

class Message {
  String id;
  String message;
  DateTime date;
  bool isTourist; // 1 tourist, 0 tourguide
  Message(
      {@required this.id,
      @required this.message,
      @required this.date,
      @required this.isTourist});
}
