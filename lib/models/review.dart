import 'package:flutter/material.dart';

class Review {
  String reviewerID;
  String review;
  int rate;

  Review(
      {@required this.rate, @required this.review, @required this.reviewerID});
}
