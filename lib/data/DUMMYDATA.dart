import 'package:flutter/cupertino.dart';

import '../models/tourguide.dart';
import '../models/tour.dart';
import '../models/tourist.dart';
import 'package:gawla/models/review.dart';

class Data extends ChangeNotifier {
  static Review review1 = Review(
      rate: 5,
      review: 'Gave Me The Tour Of My Life. HIGHLY RECOMMEND!',
      reviewerID: '1Tourist');
  static Review review2 =
      Review(rate: 4, review: 'Very Good Tourguide', reviewerID: '2Tourist');
  static Review review3 = Review(
      rate: 3,
      review: 'Good Tourguide. Only problem was timings',
      reviewerID: '1Tourist');

  static TourGuide tourguide1 = TourGuide(
      profileID: '1TourGuide',
      name: "Mohamed",
      password: "abcd123",
      nationality: "Egyptian",
      age: 42,
      gender: true,
      phoneNumber: "0101895078523",
      since: 1998,
      experience: "enter experienece here",
      languages: ["Arabic", "English", "Spanish"],
      rating: 5,
      displayPicture: null,
      chats: null);
  static TourGuide tourguide2 = TourGuide(
      profileID: '2TourGuide',
      name: "Hanz",
      password: "abcd123",
      nationality: "German",
      age: 35,
      gender: true,
      phoneNumber: "901835463",
      experience: "enter experienece here",
      languages: ["Deutsch", "English", "Spanish"],
      rating: 4,
      displayPicture: null,
      chats: null);

  static Tourist tourist1 = Tourist(
      profileID: "1Tourist",
      name: "Hend",
      password: "abcd123",
      nationality: "Kuwait",
      age: 26,
      gender: false,
      phoneNumber: "91313333",
      displayPicture: null,
      chats: null);
  static Tourist tourist2 = Tourist(
      profileID: "2Tourist",
      name: "Jack",
      password: "abcd123",
      nationality: "American",
      age: 53,
      gender: false,
      phoneNumber: "91313333",
      displayPicture: null,
      chats: null);
  var DUMMY_TOURGUIDES = [tourguide1, tourguide2];
  var DUMMY_TOURSISTS = [tourist1, tourist2];
  var DUMMY_TOURS = [
    Tour(
        tourID: "1Tour",
        name: "Pharonic Tour",
        tourguide: "1TourGuide",
        tourists: ["1Tourist", "2Tourist"],
        date: DateTime.now(),
        location: "Cairo",
        places: ["Giza"],
        description: "Enter Description here",
        meetingPoint: "tahrir",
        language: "English",
        price: 200,
        peopleAllowed: 5,
        pictures: [
          'images/egypt-cairo-pyramids-of-giza-and camels-2.jpg',
          'images/egypt-cairo-pyramids-of-giza-and camels-2.jpg',
          'images/egypt-cairo-pyramids-of-giza-and camels-2.jpg'
        ]),
    Tour(
        tourID: "2Tour",
        name: "Musuem",
        tourguide: "1TourGuide",
        tourists: ["1Tourist", "2Tourist"],
        date: DateTime.now(),
        location: "Alexandria",
        places: ["Giza"],
        description: "Enter Description here",
        meetingPoint: "tahrir",
        language: "English",
        price: 150,
        peopleAllowed: 5,
        pictures: [
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg',
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg'
        ])
  ];

  void addTour() {
    DUMMY_TOURS.add(Tour(name: 'NewTOUR'));
    notifyListeners();
  }

  TourGuide getTourGuideByID(String id) {
    return DUMMY_TOURGUIDES.where((tourguide) {
      return tourguide.profileID == id;
    }).toList()[0];
  }

  Tourist getTouristByID(String id) {
    return DUMMY_TOURSISTS.where((tourist) {
      return tourist.profileID == id;
    }).toList()[0];
  }
}
