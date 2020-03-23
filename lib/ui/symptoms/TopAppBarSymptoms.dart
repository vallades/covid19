import 'package:flutter/material.dart';
import 'package:covid/Theme.dart' as Theme;

class TopAppBarSymptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.only(
        top: MediaQuery
            .of(context)
            .padding
            .top
      ),
      child: new Row(
        children: <Widget>[
          new BackButton(
            color: Theme.Colors.appBarIconColor,
          ),
        ],
      ),
    );
  }
}
