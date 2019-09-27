import 'package:flutter/cupertino.dart';
import 'package:gawla/models/message.dart';
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

  static Message message1 = Message(
      id: 'msg1',
      isTourist: false,
      sender: 'KTOUR',
      text:
          'Hello Everyone, I am Mohammed from Egypt the tourguide for this tour. This will be our main place for communication. I hope You all enjoy your time. Now everyone intorduce themselves :)');
  static Message message2 = Message(
      id: 'msg1',
      isTourist: true,
      sender: '1Tourist',
      text:
          'Hey Everyone! I am Hend from Kuwait and I can\'t wait to meet you all');
  static Message message3 = Message(
      id: 'msg1',
      isTourist: true,
      sender: '2Tourist',
      text: 'Heyoo! I am Jacak from US and I\'ll meet yall soon ;)');

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
        tourists: ["2Tourist"],
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
        ]),
    Tour(
        name: 'Best Tour Ever',
        description: 'Karim Will provide you with the best tour of your life',
        language: 'English',
        location: 'San Stefano',
        meetingPoint: 'Raml Station',
        price: 500,
        tourID: 'KTOUR',
        tourguide: '1TourGuide',
        messages: [message1, message2, message3])
  ];
  void addTouristToTour(String tourID, String touristID) {
    var tour = DUMMY_TOURS.where((tour) => tourID == tour.tourID).toList()[0];
    tour.tourists.add(touristID);

    notifyListeners();
  }

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

  Tour getTourByID(String id) {
    return DUMMY_TOURS.where((tour) {
      return tour.tourID == id;
    }).toList()[0];
  }

  String getUserName(String id) {
    int isTourguide = DUMMY_TOURGUIDES
        .where((tourguide) {
          return tourguide.profileID == id;
        })
        .toList()
        .length;
    if (isTourguide > 0) {
      return DUMMY_TOURGUIDES
          .where((tourguide) {
            return tourguide.profileID == id;
          })
          .toList()[0]
          .name;
    } else {
      return DUMMY_TOURSISTS
          .where((tourist) {
            return tourist.profileID == id;
          })
          .toList()[0]
          .name;
    }
  }

  void addMessage(Tour tour, String sender, String text) {
    Message message = Message(sender: sender, text: text);
    tour.messages.add(message);
    notifyListeners();
  }
}
