import '../models/tourguide.dart';
import '../models/tour.dart';
import '../models/tourist.dart';

var tourguide1 = TourGuide(
    profileID: '1TourGuide',
    name: "mohamed",
    password: "abcd123",
    nationality: "Egyptian",
    age: 42,
    gender: true,
    phoneNumber: "+20101895078523",
    experience: "enter experienece here",
    languages: ["Arabic", "English", "Spanish"],
    rating: 5,
    displayPicture: null,
    chats: null);
var tourguide2 = TourGuide(
    profileID: '2TourGuide',
    name: "Hanz",
    password: "abcd123",
    nationality: "German",
    age: 35,
    gender: true,
    phoneNumber: "+4901835463",
    experience: "enter experienece here",
    languages: ["Deutsch", "English", "Spanish"],
    rating: 4,
    displayPicture: null,
    chats: null);

var tourist1 = Tourist(
    profileID: "1Tourist",
    name: "Hend",
    password: "abcd123",
    nationality: "Kuwait",
    age: 26,
    gender: false,
    phoneNumber: "91313333",
    displayPicture: null,
    chats: null);
var tourist2 = Tourist(
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
      tourguide: tourguide2,
      tourists: [tourist1, tourist2],
      date: DateTime.now(),
      location: "Cairo",
      places: ["Giza"],
      description: "Enter Description here",
      meetingPoint: "tahrir",
      language: "English",
      price: 200,
      peopleAllowed: 5,
      pictures: null)
];
