import 'package:flutter/material.dart';
import 'package:gawla/screens/tourist/signup_tourist_screen.dart';
import 'package:gawla/screens/tourist/tourist_homepage_screen.dart';

class SignIn extends StatefulWidget {
  @override
  SignInScreen createState() => SignInScreen();
}

class SignInScreen extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  String email, password;
  static const routeName = '/signin-screen';

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
                width: MediaQuery.of(context).size.width * 0.75,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(15.0)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: TextFormField(
                                  onSaved: (value) => email = value.trim(),
                                  obscureText: true,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.mail,
                                        color: Color(0xff707070),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color(0xffd1d1d1),
                                          fontSize: 17),
                                      hintText: "Email",
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff817f7f),
                                              width: 0.2)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffc0bfbf)))),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: TextFormField(
                                onSaved: (value) => password = value.trim(),
                                obscureText: true,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xff707070),
                                    ),
                                    hintStyle: TextStyle(
                                        color: Color(0xffd1d1d1), fontSize: 17),
                                    hintText: "Password"),
                              ),
                            ),
                          ),
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
                                  'SIGN IN',
                                  style: TextStyle(color: Color(0xff707070)),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 80),
                                child: GestureDetector(
                                    child: Text(
                                  "Forgot your password?",
                                  style: TextStyle(color: Color(0xff707070)),
                                ))),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SignUpTouristScreen()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Are you new? ",
                                          style: TextStyle(
                                              color: Color(0xff707070)),
                                        ),
                                        Text(
                                          "Sign up!",
                                          style: TextStyle(
                                              color: Color(0xff1C72B5)),
                                        ),
                                      ],
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
