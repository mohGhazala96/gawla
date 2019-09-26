import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  SignInScreen createState() => SignInScreen();
}

class SignInScreen extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  String email, password;
  static const routeName = 'signin-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey,
      child: Container(
        child: Row(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 200),
                child: Text(
                  'GAWLA',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            Container(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 160),
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
                                  labelStyle: TextStyle(
                                      color: Color(0xffd1d1d1), fontSize: 17),
                                  labelText: "Email",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff817f7f),
                                          width: 0.2)),
                                  // focusedBorder: UnderlineInputBorder(
                                  //     borderSide:
                                  //         BorderSide(color: Color(0xff817f7f)))
                                ),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xff707070),
                                  ),
                                  labelStyle: TextStyle(
                                      color: Color(0xffd1d1d1), fontSize: 17),
                                  labelText: "Password"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
