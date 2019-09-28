import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gawla/screens/tourguide/tourguide_homepage_screen.dart';
import 'package:image_picker/image_picker.dart';

class AddTour extends StatefulWidget {
  @override
  AddTourScreen createState() => AddTourScreen();
}

class AddTourScreen extends State<AddTour> {
  final formKey = GlobalKey<FormState>();
  static const routeName = 'add-tour-screen';
  File image;
  String name, date, location, meetingPoint, language, price, size, description;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Add Tour",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                        ))
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.15,
                    buttonColor: Colors.grey,
                    child: RaisedButton(
                      onPressed: getImage,
                      child: Icon(
                        Icons.add_a_photo,
                        size: 50,
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 20),
                      child: ListView(children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: name,
                              onSaved: (value) => name = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.details,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Tour Name",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: date,
                              onSaved: (value) => date = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "DATE/TIME",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: location,
                              onSaved: (value) => location = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.near_me,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Location",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: meetingPoint,
                              onSaved: (value) => meetingPoint = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.pin_drop,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Meeting Point",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: language,
                              onSaved: (value) => language = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.language,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Tour Language",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: price,
                              onSaved: (value) => price = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.attach_money,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Tour Price",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: size,
                              onSaved: (value) => size = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.people,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Maximum Capacity",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                  color: Color(0xff707070), width: 2.0),
                            ),
                            child: TextFormField(
                              initialValue: description,
                              onSaved: (value) => description = value.trim(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.info_outline,
                                  size: 25,
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xffd1d1d1), fontSize: 17),
                                hintText: "Brief Description",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width * 0.5,
                            height: 50,
                            buttonColor: Colors.white,
                            child: Container(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ToursGuideHomePageScreen()));
                                },
                                child: Text(
                                  'ADD TOUR',
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
