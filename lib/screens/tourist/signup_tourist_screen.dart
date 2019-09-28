import 'package:flutter/material.dart';
import 'package:gawla/screens/common/signin_screen.dart';
import 'package:gawla/screens/tourist/tourist_homepage_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUpTouristScreen extends StatefulWidget {
  static const routeName = 'signup_tourist_screen';

  @override
  _SignUpTouristScreenState createState() => _SignUpTouristScreenState();
}

class _SignUpTouristScreenState extends State<SignUpTouristScreen> {
  final formKey = GlobalKey<FormState>();

  String email, password, fName, lName, phoneNumber;
  CountryCode countryCode = new CountryCode();

  @override
  Widget build(BuildContext context) {
    final String logoAssetName = 'images/logo.svg';

    return Scaffold(
        body: Form(
      key: formKey,
      child: Container(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.only(top: 120),
                child: SvgPicture.asset(logoAssetName,
                    semanticsLabel: 'Gawla Logo'),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
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
                                      textCapitalization:
                                          TextCapitalization.words,
                                      onSaved: (value) => fName = value.trim(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      decoration: InputDecoration(
                                        prefix: SizedBox(width: 16),
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
                                        hintText: "First Name",
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
                                      textCapitalization:
                                          TextCapitalization.words,
                                      onSaved: (value) => lName = value.trim(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      decoration: InputDecoration(
                                          prefix: SizedBox(width: 16),
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
                                          hintText: "Last Name"),
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
                                  keyboardType: TextInputType.emailAddress,
                                  onSaved: (value) => email = value.trim(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                  decoration: InputDecoration(
                                      prefix: SizedBox(width: 16),
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
                                      hintText: "Email"),
                                ),
                              ),
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
                                  obscureText: true,
                                  onSaved: (value) => password = value.trim(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                  decoration: InputDecoration(
                                      prefix: SizedBox(width: 16),
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
                                        Icons.lock,
                                        color: Color(0xff707070),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color(0xffd1d1d1),
                                          fontSize: 17),
                                      hintText: "Password"),
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
                                        0.25,
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
                                      alignLeft: true,
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
                                        0.55,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) => lName = value.trim(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      decoration: InputDecoration(
                                          prefix: SizedBox(width: 16),
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
                                          hintText: "Phone Number"),
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
                                              TouristHomePage()));
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
