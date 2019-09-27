import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifDialog extends StatelessWidget {
  final String text;
  NotifDialog({this.text});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: EdgeInsets.all(20.0),
      titlePadding: EdgeInsets.all(20.0),
      content: Text(text),
      contentTextStyle: TextStyle(fontSize: 17, color: Colors.white),
      title: Text("Oops"),
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      backgroundColor: Color(0xFF03193A),
      actions: <Widget>[
        FlatButton(
          child: const Text("Ok", style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
