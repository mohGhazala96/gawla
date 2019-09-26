import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreyStripe extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final int price;
  final int capacity;
  GreyStripe({this.title, this.price, this.capacity,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black38,
        height: MediaQuery.of(context).size.height / 10.5,
        child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.group,
                            size: 12,
                            color: Colors.white,
                          ),
                          Text(
                            " $capacity People",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffD1D1D1)),
                          ),
                          Text(
                            "  |  ",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                          Icon(
                            Icons.account_balance_wallet,
                            size: 12,
                            color: Colors.white,
                          ),
                          Text(
                            " $price EGP/hr",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffD1D1D1)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 24,
                  width: MediaQuery.of(context).size.width / 4,
                  margin: EdgeInsets.only(left: 5),
                  child: RaisedButton(
                    onPressed: onPressed,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: Theme.of(context).primaryColor,
                    child: Text("View",
                        style: TextStyle(fontSize: 10, color: Colors.white)),
                  ),
                )
              ],
            )));
  }
}
