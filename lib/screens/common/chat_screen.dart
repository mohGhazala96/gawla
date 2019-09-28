import 'package:flutter/material.dart';
import 'package:gawla/main.dart';
import 'package:bubble/bubble.dart';
import 'package:gawla/models/tour.dart';
import 'package:provider/provider.dart';
import 'package:gawla/widgets/diagonally_cut_colored_image.dart';
import 'package:gawla/data/DUMMYDATA.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = 'chat-screen';

  @override
  Widget build(BuildContext context) {
    String id = 'KTOUR';
    String user = MyApp.profileID;

    Tour tour = Provider.of<Data>(context).getTourByID(id);
    String msgText;
    final _controller = TextEditingController();

    // var linearGradient = const BoxDecoration(
    //   gradient: const LinearGradient(
    //     begin: FractionalOffset.centerRight,
    //     end: FractionalOffset.bottomLeft,
    //     colors: <Color>[
    //       const Color(0xFF413070),
    //       const Color(0xFF2B264A),
    //     ],
    //   ),
    // );

    print(user + 'sjsjsjj');

    List<Bubble> mapMessagesToBubbles() {
      List<Bubble> messageBubbles = [];
      for (int i = 0; i < tour.messages.length; i++) {
        if (tour.messages[i].sender == user) {
          messageBubbles.add(
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nipWidth: 30,
              nipHeight: 10,
              nip: BubbleNip.rightTop,
              color: Color.fromRGBO(225, 255, 199, 1.0),
              child: Text(
                tour.messages[i].text,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        } else {
          messageBubbles.add(
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nipWidth: 30,
              nipHeight: 10,
              nip: BubbleNip.leftTop,
              child: RichText(
                text: TextSpan(
                  text: Provider.of<Data>(context)
                          .getUserName(tour.messages[i].sender) +
                      ': ',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: tour.messages[i].text,
                        style: TextStyle(fontSize: 18.0, color: Colors.black))
                  ],
                ),
              ),
            ),
          );
        }
      }
      return messageBubbles;
    }

    Widget _buildDiagonalImageBackground(BuildContext context) {
      var screenWidth = MediaQuery.of(context).size.width;

      return new DiagonallyCutColoredImage(
        new Image.asset(
          'images/img6.png',
          width: screenWidth,
          height: 280.0,
          fit: BoxFit.cover,
        ),
      );
    }

    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
        child: Scaffold(
            appBar: AppBar(
                elevation: 15.0,
                leading: BackButton(
                  color: Colors.black,
                ),
                centerTitle: true,
                title: Text(
                  tour.name,
                  style: TextStyle(fontWeight: FontWeight.w900),
                )),
            body: Stack(
              children: <Widget>[
                _buildDiagonalImageBackground(context),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Bubble(
                          alignment: Alignment.center,
                          color: Color.fromRGBO(212, 234, 244, 1.0),
                          child: Text(tour.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 11.0)),
                        ),
                        Expanded(
                          child: ListView(
                            children: mapMessagesToBubbles(),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                controller: _controller,
                                style:
                                    TextStyle(decoration: TextDecoration.none),
                                onChanged: (value) {
                                  msgText = value;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Add Message To Send',
                                  hintStyle: TextStyle(color: Colors.blueGrey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                onPressed: () {
                                  Provider.of<Data>(context)
                                      .addMessage(tour, user, msgText);
//                          _controller.clear();
                                },
                                child: Text('SEND'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
