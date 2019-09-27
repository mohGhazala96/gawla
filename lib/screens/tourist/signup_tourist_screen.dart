import 'package:flutter/material.dart';
import 'package:gawla/screens/common/signin_screen.dart';
import 'package:gawla/screens/tourist/tourist_homepage_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SignUpTouristScreen extends StatefulWidget {
  static const routeName = 'signup_tourist_screen';

  @override
  _SignUpTouristScreenState createState() => _SignUpTouristScreenState();
}

class _SignUpTouristScreenState extends State<SignUpTouristScreen> {
  final formKey = GlobalKey<FormState>();

  String email, password, fName, lName, phoneNumber, countryCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey,
      child: Container(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 160),
                child: Text(
                  'GAWLA',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: TextFormField(
                                      onSaved: (value) => fName = value.trim(),
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        hintStyle: TextStyle(
                                          color: Color(0xffd1d1d1),
                                          fontSize: 17,
                                        ),
                                        hintText: "   First Name",
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                      color: Color(0xffd1d1d1),
                                    ))),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: TextFormField(
                                      onSaved: (value) => lName = value.trim(),
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          suffixIcon: Icon(
                                            Icons.account_circle,
                                            color: Color(0xff707070),
                                            size: 27,
                                          ),
                                          hintStyle: TextStyle(
                                              color: Color(0xffd1d1d1),
                                              fontSize: 17),
                                          hintText: "  Last Name"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular(15.0)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: TextFormField(
                                  onSaved: (value) => email = value.trim(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                  decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.amber)),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.mail,
                                        color: Color(0xff707070),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color(0xffd1d1d1),
                                          fontSize: 17),
                                      hintText: "   Email"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: TextFormField(
                                      onSaved: (value) =>
                                          countryCode = value.trim(),
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        hintStyle: TextStyle(
                                          color: Color(0xffd1d1d1),
                                          fontSize: 17,
                                        ),
                                        hintText: "   +??",
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                      color: Color(0xffd1d1d1),
                                    ))),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.65,
                                    child: TextFormField(
                                      onSaved: (value) => lName = value.trim(),
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          ),
                                          suffixIcon: Icon(
                                            Icons.phone,
                                            color: Color(0xff707070),
                                            size: 27,
                                          ),
                                          hintStyle: TextStyle(
                                              color: Color(0xffd1d1d1),
                                              fontSize: 17),
                                          hintText: "  Phone Number"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                "By clicking \"sign up\", you are agreeing to Gawla's terms and conditions and acknowledge you have read the privacy policy.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 9),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width * 0.5,
                              height: 45,
                              buttonColor: Colors.white,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ToursitHomePageScreen()));
                                },
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(color: Color(0xff707070)),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SignIn()));
                                    },
                                    child: Text(
                                      "Sign in instead",
                                      style:
                                          TextStyle(color: Color(0xff707070)),
                                    )))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
