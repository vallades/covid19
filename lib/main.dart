import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "COVID19",
    home: Container(
      child: new Center(
        child: new Text(
          "COVID 19",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0),
        ),
      ),
    ),
  ));
}
