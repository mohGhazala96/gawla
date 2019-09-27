import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gawla/models/question.dart';
import 'package:gawla/screens/tourist/tourist_homepage_screen.dart';
import 'package:gawla/models/FAQ.dart';
import 'package:gawla/data/DUMMYDATA.dart';
import 'package:provider/provider.dart';

class FAQ extends StatefulWidget {
  @override
  FAQScreen createState() => FAQScreen();
}

class FAQScreen extends State<FAQ> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = 'faq-screen';

  @override
  Widget build(BuildContext context) {
    var faq = Provider.of<Data>(context).getFAQ();
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TouristHomePage()));
                        },
                        child: Icon(Icons.arrow_back_ios,
                            color: Colors.black, size: 35.0)),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Frequently Asked Questions",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.9,
              child: Container(
                margin: EdgeInsets.only(top: 50),
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, -1),
                          blurRadius: 13)
                    ],
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(15.0),
                    border:
                        new Border.all(color: Color(0xff707070), width: 0.0)),
                child: SingleChildScrollView(
                  child: Container(
                      margin: const EdgeInsets.all(24.0),
                      child: ExpansionPanelList(
                        animationDuration: Duration(milliseconds: 350),
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            faq.questions[index].isExpanded = !isExpanded;
                          });
                        },
                        children: <ExpansionPanel>[
                          ...faq.questions.map<ExpansionPanel>((Question x) {
                            return ExpansionPanel(
                                canTapOnHeader: true,
                                isExpanded: x.isExpanded,
                                headerBuilder: (context, isExpanded) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 20, top: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(right: 8),
                                              child: Icon(FontAwesomeIcons
                                                  .questionCircle)),
                                          (Text(
                                            x.question,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 13),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                body: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.13,
                                    margin: EdgeInsets.only(
                                        left: 20, bottom: 20, right: 20),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.question_answer,
                                            color: Colors.white,
                                          ),
                                          Expanded(
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  x.answer,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  maxLines: null,
                                                )),
                                          ),
                                        ],
                                      ),
                                    )));
                          }),
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
