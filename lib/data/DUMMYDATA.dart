import 'package:flutter/cupertino.dart';
import 'package:gawla/models/notification.dart';
import 'package:gawla/models/notifications.dart';
import 'package:gawla/models/notification.dart';

import '../models/tourguide.dart';
import '../models/tour.dart';
import '../models/tourist.dart';
import 'package:gawla/models/review.dart';
import 'package:gawla/models/message.dart';

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
  static NotificationForDay nfd1 = NotificationForDay(
      date: "28th of September",
      notificationsForDay: [
        "Egyptian Museum @ 10:00 AM",
        "Library of Alexandria @ 2:30 PM"
      ]);
  static NotificationForDay nfd2 = NotificationForDay(
      date: "29th of September",
      notificationsForDay: ["Karnak Temple @ 11:00 AM"]);
  static NotificationForDay nfd3 = NotificationForDay(
      date: "30th of September",
      notificationsForDay: [
        "Abou-Simbel Temple @ 9:00 AM",
        "Philae Temple @ 3:30 PM"
      ]);
  static Notifications notifications1 =
      Notifications(notifications: [nfd1, nfd2, nfd3]);

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
      email: "tourguide1@gmail.com",
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
      email: "tourguide2@gmail.com",
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
      email: "hendkw@gmail.com",
      name: "Hend",
      password: "abcd123",
      nationality: "Kuwait",
      age: 26,
      gender: false,
      phoneNumber: "91313333",
      displayPicture: 'images/karim.jpg',
      chats: null);
  static Tourist tourist2 = Tourist(
      profileID: "2Tourist",
      email: "captainamerica@gmail.com",
      name: "Jack",
      password: "abcd123",
      nationality: "American",
      age: 53,
      gender: false,
      phoneNumber: "91313333",
      displayPicture: 'images/karim.jpg',
      chats: null);
  var DUMMY_TOURGUIDES = [tourguide1, tourguide2];
  var DUMMY_TOURSISTS = [tourist1, tourist2];

  var DUMMY_TOURS = [
    Tour(
        tourID: "1Tour",
        name: "Pharonic Tour",
        tourguide: "1TourGuide",
        tourguideName: "Hend",
        tourists: ["1Tourist", "2Tourist"],
        date: "1/10.2019",
        location: "Cairo",
        places: ["Giza"],
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        meetingPoint: "tahrir",
        language: "English",
        price: 200,
        peopleAllowed: 5,
        pictures: [
          'images/egypt-cairo-pyramids-of-giza-and camels-2.jpg',
          'images/egypt-cairo-pyramids-of-giza-and camels-2.jpg',
        ],
        rating: 4.8,
        tourGuidePic: 'images/karim.jpg'),
    Tour(
        tourID: "2Tour",
        name: "Musuem",
        tourguide: "1TourGuide",
        tourguideName: "Hend",
        tourists: ["2Tourist"],
        date: "12/12/2019",
        location: "Alexandria",
        places: ["Giza"],
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        meetingPoint: "tahrir",
        language: "English",
        price: 150,
        peopleAllowed: 5,
        pictures: [
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg',
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg'
        ],
        rating: 4.2,
        tourGuidePic: 'images/karim.jpg'),
    Tour(
        tourID: "2Tour",
        name: "Musuem",
        tourguide: "2TourGuide",
        tourguideName: "Hend",
        tourists: ["2Tourist"],
        date: "12/12/2019",
        location: "Alexandria",
        places: ["Giza"],
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        meetingPoint: "tahrir",
        language: "English",
        price: 150,
        peopleAllowed: 5,
        pictures: [
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg',
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg'
        ],
        rating: 4.2,
        tourGuidePic: 'images/karim.jpg'),
    Tour(
        messages: [message1, message2, message3],
        tourID: "KTOUR",
        name: "Musuem",
        tourguide: "1TourGuide",
        tourguideName: "Hend",
        tourists: ["1Tourist"],
        date: "12/12/2019",
        location: "Alexandria",
        places: ["Giza"],
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        meetingPoint: "tahrir",
        language: "English",
        price: 150,
        peopleAllowed: 5,
        pictures: [
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg',
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg'
        ],
        rating: 4.2,
        tourGuidePic: 'images/karim.jpg'),
  ];
  var DUMMY_VIEW_TOURS = [
    Tour(
        tourID: "1Tour",
        name: "Pharonic Tour",
        tourguide: "1TourGuide",
        tourists: ["1Tourist", "2Tourist"],
        date: "a",
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
        date: "date",
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
        tourID: "2Tour",
        name: "Musuem",
        tourguide: "1TourGuide",
        tourguideName: "Hend",
        tourists: ["2Tourist"],
        date: "12/12/2019",
        location: "Alexandria",
        places: ["Giza"],
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        meetingPoint: "tahrir",
        language: "English",
        price: 150,
        peopleAllowed: 5,
        pictures: [
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg',
          'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg'
        ],
        rating: 4.2,
        tourGuidePic: 'images/karim.jpg')
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

  void updateDummyData(List<Tour> list) {
    DUMMY_VIEW_TOURS = list;
    notifyListeners();
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

  Notifications getNotifications() {
    return notifications1;
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

  bool isTourist(String id) {
    int tourist = DUMMY_TOURSISTS
        .where((tourist) {
          return tourist.profileID == id;
        })
        .toList()
        .length;

    if (tourist > 0) {
      return true;
    }
    return false;
  }

  void addMessage(Tour tour, String sender, String text) {
    Message message = Message(sender: sender, text: text);
    tour.messages.add(message);
    notifyListeners();
  }
}
