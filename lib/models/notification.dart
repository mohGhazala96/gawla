import 'package:flutter/material.dart';

class NotificationForDay {
  String date;
  List<String> notificationsForDay;
  bool isExpanded = true;

  NotificationForDay({@required this.date, this.notificationsForDay});
}
