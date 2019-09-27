import 'package:gawla/models/message.dart';
import 'package:gawla/models/review.dart';
import 'package:gawla/models/tour.dart';
import 'package:gawla/models/tourguide.dart';
import 'package:gawla/models/tourist.dart';

class DATA {
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
      nationality: 'mexican',
      gender: false,
      email: 'angela@gmail.com',
      age: 29,
      bio: 'A Passionate Tourguide who travelled to more than 50 countries!',
      languages: ['english', 'spanish'],
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
      rating: 2.5,
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
      pictures: ['images/img3', 'images/img8'],
      rating: 4.0,
      peopleAllowed: 15,
      tourguideName: 'hassan',
      messages: [message1, message2, message3],
      tourists: ['johnID', 'margreetID']);

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
      pictures: ['images/img5', 'images/img12', 'images/14'],
      rating: 5.0,
      peopleAllowed: 20,
      tourguideName: 'inanc',
      tourists: ['karimID', 'stanID', 'milkaID']);
}
