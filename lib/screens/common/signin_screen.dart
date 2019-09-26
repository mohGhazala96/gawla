import 'package:flutter/material.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 160),
                child: TextFormField(
                  onSaved: (value) => password = value.trim(),
                  obscureText: true,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      labelStyle:
                          TextStyle(color: Color(0xffd1d1d1), fontSize: 17),
                      labelText: "Password",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
