import 'package:covid/model/symptoms.dart';
import 'package:covid/ui/home/SymptomRow.dart';
import 'package:flutter/material.dart';
import 'package:covid/Theme.dart' as Theme;

class SymptomsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: new Container(
        color: Theme.Colors.homePageBackground,
        child: new ListView.builder(
          itemExtent: 160.0,
          itemCount: SymptomDAO.symptoms.length,
          itemBuilder: (_, index) => new SymptomRow(SymptomDAO.symptoms[index]),
        ),
      ),
    );
  }
}