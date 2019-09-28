import 'package:flutter/cupertino.dart';
import 'package:gawla/models/FAQ.dart';
import 'package:gawla/models/question.dart';

import '../models/tourguide.dart';
import '../models/tour.dart';
import '../models/tourist.dart';
import 'package:gawla/models/review.dart';
import 'package:gawla/models/message.dart';

class Data extends ChangeNotifier {
  
  static Question q1 = Question(
      question: "What is Lorem Ipsum?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      isExpanded: true);
  static Question q2 = Question(
      question: "Why do we use it?",
      answer:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
      isExpanded: false);
  static Question q3 = Question(
      question: "Where does it come from?",
      answer:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
      isExpanded: false);
  static Question q4 = Question(
      question: "Where can I get some?",
      answer:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
      isExpanded: false);
  static FAQ faq = FAQ(questions: [q1, q2, q3, q4]);
  FAQ getFAQ() {
    return faq;
  }
  static Tourist tourist1 = Tourist(
      name: 'kairm',
      age: 21,
      email: 'karim@gmail.com',
      gender: true,
      nationality: 'egyptian',
      password: '123456',
      phoneNumber: '01015740042',
      profileID: 'karimID',
      displayPicture: 'images/karim.jpg');

  static Tourist tourist2 = Tourist(
      name: 'John',
      age: 28,
      email: 'john@gmail.com',
      gender: true,
      nationality: 'american',
      password: '123456',
      phoneNumber: '99015740055',
      profileID: 'johnID',
      displayPicture: 'images/john.jpg');

  static Tourist tourist3 = Tourist(
      name: 'Stan',
      age: 38,
      email: 'stan@gmail.com',
      gender: true,
      nationality: 'french',
      password: '123456',
      phoneNumber: '62585741234',
      profileID: 'stanID',
      displayPicture: 'images/stan.jpg');

  static Tourist tourist4 = Tourist(
      name: 'Margreet ',
      age: 26,
      email: 'margreet@gmail.com',
      gender: false,
      nationality: 'dutch',
      password: '123456',
      phoneNumber: '12585741212',
      profileID: 'margreetID',
      displayPicture: 'images/margreet.jpg');

  static Tourist tourist5 = Tourist(
      name: 'Milka',
      age: 45,
      email: 'milka@gmail.com',
      gender: false,
      nationality: 'kenyian',
      password: '123456',
      phoneNumber: '82585741238',
      profileID: 'milkaID',
      displayPicture: 'images/milka.jpg');

  static Review review1 = Review(
      reviewerID: 'milkaID',
      review: 'Fantastic Tourguide. HIGHLY RECOMMEND',
      rate: 5);

  static Review review2 = Review(
      reviewerID: 'stanID',
      review: 'TERRIBLE! Totally destroyed my experience',
      rate: 1);

  static Review review3 =
      Review(reviewerID: 'karimID', review: 'Very Good TourGuide', rate: 4);

  static Review review4 = Review(
      reviewerID: 'margreetID',
      review: 'Exceptional TourGuide. Gave Me The Experience of my Life',
      rate: 5);



  static TourGuide tourguide1 = TourGuide(
      name: 'angela',
      profileID: 'angelaID',
      phoneNumber: '01515740042',
      password: '123456',
      nationality: 'egyptain',
      gender: true,
      email: 'angela@gmail.com',
      age: 29,
      bio: 'A Passionate Tourguide who travelled to more than 50 countries!',
      languages: ['english', 'spanish', 'arabic'],
      since: 2018,
      displayPicture: 'images/angela.jpg',
      rating: 4.75,
      reviews: [review1, review4, review3]);

  static TourGuide tourguide2 = TourGuide(
      name: 'Inanc',
      profileID: 'inancID',
      phoneNumber: '54515740111',
      password: '123456',
      nationality: 'turkish',
      gender: true,
      email: 'inanc@gmail.com',
      age: 55,
      bio: 'An Experienced Tourguide with 20 Years of experience',
      languages: ['english', 'turkish'],
      since: 2011,
      displayPicture: 'images/angela.jpg',
      rating: 2.2,
      reviews: [review3, review2]);

  static TourGuide tourguide3 = TourGuide(
      name: 'Hassan',
      profileID: 'hassanID',
      phoneNumber: '15515740100',
      password: '123456',
      nationality: 'egyptain',
      gender: true,
      email: 'hassan@gmail.com',
      age: 34,
      bio:
          'A Proffesional Tourguide who guarentees you the experience of your life',
      languages: ['english', 'arabic'],
      since: 2019,
      displayPicture: 'images/hassan.jpg',
      rating: 4.5,
      reviews: [review3, review4]);

  static Message message1 = Message(
      sender: 'hassanID',
      isTourist: false,
      text:
          'Hello Everyone! I am Hassan and I\'ll be your tourguide for this tour isa. Y Now Everyone Introduce themselves');
  static Message message2 = Message(
      sender: 'johnID',
      isTourist: true,
      text: 'Hey Guys, I am John from US and I can\'t wait to meet you all');
  static Message message3 = Message(
      sender: 'margreetID',
      isTourist: true,
      text:
          'HEYYYY!! I am Margreet from Netherlands and I am very excited to come to Egypt and meet you all');

  static Tour tour1 = Tour(
      name: 'Pyramids Trip',
      tourguide: 'hassanID',
      tourID: 'pyramidsID',
      price: 500,
      meetingPoint: 'Tahrir Square',
      location: 'Pyramids, Giza',
      language: 'english',
      description:
          'We will explore the Pyramids, Sphinx and a lot more of the magical land of Egypt',
      places: ['Pyramids', 'Sphinx'],
      pictures: ['images/img3.png', 'images/img8.png'],
      rating: 4.5,
      peopleAllowed: 15,
      tourguideName: 'hassan',
      messages: [message1, message2, message3],
      tourists: ['johnID', 'margreetID'],
      tourGuidePic: 'images/hassan.jpg',
      touristsPictures: ['images/john.jpg', 'images/margreet.jpg']);

  static Tour tour2 = Tour(
      name: 'Luxor Trip',
      tourguide: 'inancID',
      tourID: 'luxorID',
      price: 6000,
      meetingPoint: 'Talaat Harb Square',
      location: 'Luxor',
      language: 'english',
      description: 'We will explore the mysterious land of Luxor',
      places: ['Pyramids', 'Sphinx'],
      pictures: ['images/img5.jpg', 'images/img12.jpg', 'images/img14.jpg'],
      rating: 2.2,
      peopleAllowed: 20,
      tourguideName: 'inanc',
      tourists: ['karimID', 'stanID', 'milkaID'],
      tourGuidePic: 'images/inanc.jpg',
      touristsPictures: [
        'images/karim.jpg',
        'images/stan.jpg',
        'images/milka.jpg'
      ]);

  static Tour tour3 = Tour(
      name: 'Cairo Trip',
      tourguide: 'hassanID',
      tourID: 'CairoID',
      price: 6000,
      meetingPoint: 'Cairo University Campus',
      location: 'Cairo',
      language: 'english',
      description:
          'We will visit the Egyptain museum and have a wonderful Nile cruise',
      places: ['Nile', 'Egyptain Museum'],
      pictures: [
        'images/The-Museum-of-Egyptian-Antiquities-also-known-as-The-Egyptian-Museum.jpg',
        'images/img9.png',
      ],
      rating: 4.5,
      peopleAllowed: 20,
      tourguideName: 'hassan',
      tourists: ['karimID', 'stanID'],
      tourGuidePic: 'images/hassan.jpg',
      touristsPictures: ['images/karim.jpg', 'images/stan.jpg']);

  static Tour tour4 = Tour(
      name: 'Sharm El Sheikh Trip',
      tourguide: 'angelaID',
      tourID: 'sharmID',
      price: 6000,
      meetingPoint: 'Talaat Harb Square',
      location: 'Luxor',
      language: 'english',
      description:
          'We will explore the island of dreams known as Sharm EL Sheikh',
      places: ['Sue Square', 'Beach'],
      pictures: ['images/img7.jpg'],
      rating: 4.75,
      peopleAllowed: 20,
      tourguideName: 'inanc',
      tourists: ['karimID', 'stanID', 'milkaID'],
      tourGuidePic: 'inanc.jpg',
      touristsPictures: [
        'images/karim.jpg',
        'images/stan.jpg',
        'images/milka.jpg'
      ]);

  var DUMMY_TOURSISTS = [tourist1, tourist2, tourist3, tourist4, tourist5];
  var DUMMY_TOURGUIDES = [tourguide1, tourguide2, tourguide3];
  var DUMMY_TOURS = [tour1, tour2, tour3, tour3, tour4];
  var DUMMY_VIEW_TOURS = [tour1, tour2, tour3, tour4];

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
