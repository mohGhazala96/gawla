import 'package:flutter/material.dart';
import 'package:gawla/screens/common/chat_screen.dart';
import 'package:gawla/screens/tourguide/tourguide_homepage_screen.dart';
import 'package:gawla/screens/tourguide/tourist_profile_screen.dart';
import 'package:gawla/widgets/PhotoListState.dart';
import 'package:gawla/widgets/RatingBar.dart';
import '../../data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class TourTourGuideDetailedScreen extends StatefulWidget {
  static const routeName = 'tour-tourguide-detailed-screen';

  @override
  _TourTourGuideDetailedScreenState createState() =>
      _TourTourGuideDetailedScreenState();
}

class _TourTourGuideDetailedScreenState
    extends State<TourTourGuideDetailedScreen> {
  @override
  void visitTourist(BuildContext ctx, String touristName) {
    Navigator.of(ctx).pushNamed(
      TourGuideTouristProfileScreen.routeName,
      arguments: {'id': touristName},
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final tourID = routeArgs['tourID'];

    final tourDertailed = Provider.of<Data>(context).dummyTours.where((tour) {
      return tour.tourID == tourID;
    }).toList();

    List<Widget> list = new List<Widget>();

    var tour = tourDertailed[0];
    print(tourDertailed[0].tourID);

    for (var i = 0; i < tour.tourists.length; i++) {
      list.add(
        GestureDetector(
          onTap: () => visitTourist(context, tour.tourists[i]),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
            backgroundImage: AssetImage((tour.touristsPictures[i])),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      tour.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RatingBar(rating: tour.rating),
                        Text(
                          tour.rating.toString(),
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 300,
                      child: new SingleChildScrollView(
                          child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Description: ${tour.description}'),
                              Text('Location: ${tour.location}'),
                              Text('Meeting Point: ${tour.meetingPoint}'),
                              Text('Language: ${tour.language}')
                            ],
                          ),
                          Text(
                            "Tourists:",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          new Row(children: list),
                          ListTile(
                            leading: Icon(
                              Icons.question_answer,
                              color: Colors.black,
                              size: 50,
                            ),
                            onTap: () {
                              Provider.of<Data>(context).updateTourID(tourID);
                              Navigator.of(context).pushNamed(
                                ChatScreen.routeName,
                              );
                            },
                            title: Text("Tour's Chat",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Stack(children: <Widget>[
              Hero(
                  tag: tour.pictures[0],
                  child: Container(
                      child: PhotoList(tour.pictures),
                      height: MediaQuery.of(context).size.height / 3)),
              Container(
                margin: EdgeInsets.only(left: 10, top: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ToursGuideHomePageScreen()));
                      },
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.black, size: 35.0)),
                ),
              )
            ]),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(
                '\$${tour.price}',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
