import 'package:flutter/material.dart';

class Question {
  String question;
  String answer;
  bool isExpanded = false;

  Question({@required this.question, @required this.answer, this.isExpanded});
}
