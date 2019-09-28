import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class PhotoList extends StatefulWidget {
  //* Should receive a list that builds the list view
  final List<String> imagesUrls;
  PhotoList(this.imagesUrls);
  @override
  PhotoListState createState() => PhotoListState();
}

class PhotoListState extends State<PhotoList> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4.2,
        child: Stack(
          children: <Widget>[
            PageView.builder(
              onPageChanged: (num) {
                setState(() {
                  currentPageIndex = num;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.imagesUrls[index],
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3
                );
              },
              itemCount: widget.imagesUrls.length,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: DotsIndicator(
                    dotsCount: widget.imagesUrls.length,
                    position: currentPageIndex,
                    decorator: DotsDecorator(
                        color: Colors.black,
                        activeColor: Colors.white,
                        spacing: EdgeInsets.all(2)),
                  ),
                )),
          ],
        ));
  }
}
