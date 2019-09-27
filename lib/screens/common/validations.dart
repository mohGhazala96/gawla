import 'package:gawla/main.dart';
import 'package:gawla/models/tourguide.dart';
import 'package:gawla/models/tourist.dart';

List<bool> signInValidation(String email, String password,
    List<TourGuide> tourGuides, List<Tourist> tourists) {
  for (int i = 0; i < tourGuides.length; i++) {
    if (tourGuides[i].email == email && tourGuides[i].password == password) {
      MyApp.profileID = tourGuides[i].profileID;
      print(MyApp.profileID);
      return [true, true];
    }
  }
  for (int i = 0; i < tourists.length; i++) {
    if (tourists[i].email == email && tourists[i].password == password) {
      MyApp.profileID = tourists[i].profileID;
      print(MyApp.profileID);
      return [true, false];
    }
  }
  return [false, false];
}

String validateEmail(String value) {
  if (value.isEmpty) {
    return "Enter an email address";
  }
  String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
      "\\@" +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
      "(" +
      "\\." +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
      ")+";
  RegExp regExp = RegExp(p);

  if (regExp.hasMatch(value)) {
    return null;
  }
  return 'Email is not valid';
}

String validatePassword(String value) {
  if (value.isEmpty) {
    return "Enter a password";
  }
  if (value.length < 6) {
    return "Password must be atleast 6 characters";
  }
  return null;
}
