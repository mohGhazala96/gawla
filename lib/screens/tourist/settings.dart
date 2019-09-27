import 'package:flutter/material.dart';
import 'package:gawla/models/tourguide.dart';
import 'package:gawla/models/tourist.dart';
import '../../main.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:gawla/screens/tourist/tourist_homepage_screen.dart';
import '../../data/DUMMYDATA.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings-screen';
  String imgurl = 'https://imgur.com/95klGlu.png';
  String name = "Alexandre Froment-Curtil";
  String email = "Alexandre@vodafone.eg";
  String nationality = "Hungarian";
  String number = "01010101010";
  CountryCode countryCode = new CountryCode();
  String password;
  @override
  Widget build(BuildContext context) {
    var currentUserId = MyApp.profileID;
    var touristOut =
        Provider.of<Data>(context).DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == currentUserId;
    }).toList();

    var tourguideOut =
        Provider.of<Data>(context).DUMMY_TOURGUIDES.where((tourguide) {
      return tourguide.profileID == currentUserId;
    }).toList();

    if (tourguideOut.length == 0) {
      Tourist tourist = touristOut[0];
      imgurl = tourist.displayPicture;
      name = tourist.name;
      email = tourist.email;
      nationality = tourist.nationality;
      number = tourist.phoneNumber;
    } else {
      TourGuide tourGuide = tourguideOut[0];
      imgurl = tourGuide.displayPicture;
      name = tourGuide.name;
      email = tourGuide.email;
      nationality = tourGuide.nationality;
      number = tourGuide.phoneNumber;
    }
    

    return Scaffold(
      body: Form(
          child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  TouristHomePage()));
                    },
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 35.0)),
              ),
            ),
            Align(
              
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.amber,
                              backgroundImage: AssetImage(imgurl),
                            ),

                  // CircularProfileAvatar(
                  //   imgurl, //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                  //   radius: 75, // sets radius, default 50.0
                  //   backgroundColor: Colors
                  //       .white, // sets background color, default Colors.white
                  //   borderWidth: 4, // sets border, default 0.0
                  //   initialsText: Text(
                  //     "AF",
                  //     style: TextStyle(fontSize: 40, color: Colors.white),
                  //   ), // sets initials text, set your own style, default Text('')
                  //   borderColor:
                  //       Colors.brown, // sets border color, default Colors.white
                  //   elevation:
                  //       5.0, // sets elevation (shadow of the profile picture), default value is 0.0
                  //   // foregroundColor: Colors.brown.withOpacity(
                  //   //     0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
                  //   cacheImage:
                  //       true, // allow widget to cache image against provided url
                  //   onTap: () {
                  //     print('adil');
                  //   }, // sets on tap
                  //   showInitialTextAbovePicture:
                  //       false, // setting it true will show initials text above profile picture, default false
                  // ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "Click on your avatar to select a new one!",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 14),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  children: <Widget>[
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
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff707070),
                            ),
                            hintStyle: TextStyle(
                                color: Color(0xffd1d1d1), fontSize: 17),
                            hintText: "Name",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(15.0),
                          border: new Border.all(
                              color: Color(0xff707070), width: 2.0),
                        ),
                        child: TextFormField(
                          initialValue: email,
                          onSaved: (value) => email = value.trim(),
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff707070),
                            ),
                            hintStyle: TextStyle(
                                color: Color(0xffd1d1d1), fontSize: 17),
                            hintText: "Email Address",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(15.0),
                          border: new Border.all(
                              color: Color(0xff707070), width: 2.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: new CountryCodePicker(
                                onChanged: (x) {
                                  countryCode = x;
                                },
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'EG',
                                favorite: ['EG'],
                                // optional. Shows only country name and flag
                                showCountryOnly: false,
                                // optional. aligns the flag and the Text left
                                alignLeft: false,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                initialValue: number,
                                onSaved: (value) => number = value.trim(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Color(0xffd1d1d1), fontSize: 17),
                                  hintText: "Phone Number",
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
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(15.0),
                          border: new Border.all(
                              color: Color(0xff707070), width: 2.0),
                        ),
                        child: TextFormField(
                          onSaved: (value) => password = value.trim(),
                          obscureText: true,
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff707070),
                            ),
                            hintStyle: TextStyle(
                                color: Color(0xffd1d1d1), fontSize: 17),
                            hintText: "New Password",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 120),
                      child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 50,
                        buttonColor: Colors.white,
                        child: Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          TouristHomePage()));
                            },
                            child: Text(
                              'SAVE CHANGES',
                              style: TextStyle(
                                  color: Color(0xff707070), fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
