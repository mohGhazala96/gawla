import 'package:flutter/material.dart';
import '../../data/DUMMYDATA.dart';
import '../../widgets/RatingBar.dart';
import 'package:provider/provider.dart';
import '../../main.dart';
import '../../models/tourguide.dart';
import '../../widgets/PhotoListState.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flushbar/flushbar.dart';

class TourTouristDetailedScreen extends StatefulWidget {
  static const routeName = '/tour-tourist-detailed-screen';

  @override
  _TourTouristDetailedScreenState createState() => _TourTouristDetailedScreenState();
}

class _TourTouristDetailedScreenState extends State<TourTouristDetailedScreen> {
  bool isButtonDisabled= false;
  bool isClicked=false;
  void showFlushBar(BuildContext context, String tourID) {
   Flushbar(
      flushbarPosition: FlushbarPosition.BOTTOM,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      backgroundColor: Colors.red,
      boxShadows: [BoxShadow(color: Colors.blue[800], offset: Offset(0.0, 2.0), blurRadius: 3.0)],
      backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.black]),
      isDismissible: false,
      duration: Duration(seconds: 2),
      icon: Icon(
        Icons.check,
        color: Colors.greenAccent,
      ),
      showProgressIndicator: true,
      progressIndicatorBackgroundColor: Colors.blueGrey,
      messageText: Text(
        "You successfuly booked this tour!",
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: "ShadowsIntoLightTwo"),
      ),
    )..show(context);
     Provider.of<Data>(context).addTouristToTour(tourID, MyApp.profileID);
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final tourID = routeArgs['tourID'];
    final isBooked = routeArgs['isbooked'];
    if(isBooked=="true" || isClicked)
      isButtonDisabled = true;
      else
      isButtonDisabled = false;

    final tourDertailed = Provider.of<Data>(context).DUMMY_TOURS.where((tour) {
      return tour.tourID == tourID;
    }).toList();

    var tour = tourDertailed[0];
    print(tourDertailed[0].tourID);
    return Scaffold(
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
                        RatingBar(rating: 5),
                        Text(
                          "5",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DatePickerTimeline(
                          DateTime.now(),
                          onDateChange: (date) {
                            // New date selected
                            print(date.month.toString());
                          },
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Text(
                        tour.description,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Hero(
                tag: tour.pictures[0],
                child: Container(
                    child: PhotoList(tour.pictures),
                    height: MediaQuery.of(context).size.height / 3)
//  Image.asset(
//                 tour.pictures[0],‰
//                 fit: BoxFit.fill,
//                 height: MediaQuery.of(context).size.height / 3,
//               ),
                ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                '\$${tour.price}',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 60.0,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                ),
              ),
              child: Center(
                child: FlatButton(
                  
                  onPressed: isButtonDisabled? null: () {
                    setState(() {
                      showFlushBar(context,tourID);

                      isClicked=true;


                    });
                },
                  child:  Text( 
                    isButtonDisabled?'Booked':
                  'Book Now',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      color: isButtonDisabled?Colors.grey:Colors.white)),
                //
                
                ),
                // child: Text(
                //   'Book Now',
                //   style: TextStyle(
                //       fontSize: 23.0,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white),
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
