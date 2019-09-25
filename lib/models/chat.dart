import 'package:flutter/material.dart';
import './message.dart';

class Chat {
  String id;
  String participant1; // tourist
  String participant2; // tourguide
  List<Message> messages;
  Chat(
      {@required this.id,
      @required this.participant1,
      @required this.participant2,
      @required this.messages});
}
