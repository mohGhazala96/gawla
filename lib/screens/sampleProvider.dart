import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gawla/data/DUMMYDATA.dart';

class ProviderScreen extends StatelessWidget {
  static const routeName = '/provider-screen';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(Provider.of<Data>(context).DUMMY_TOURS.last.name),
        ),
        RaisedButton(
          onPressed: () {
            Provider.of<Data>(context).addTour();
          },
          child: (Text(
            'Add Tour',
          )),
        )
      ],
    );
  }
}
