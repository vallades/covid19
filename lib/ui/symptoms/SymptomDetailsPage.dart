import 'package:covid/model/symptom.dart';
import 'package:covid/model/symptoms.dart';
import 'package:flutter/material.dart';

import 'SymptomDetailsBody.dart';
import 'TopAppBarSymptoms.dart';

class SymptomDetailsPage extends StatelessWidget {

  final Symptom symptom;

  SymptomDetailsPage(String id) :
        symptom = SymptomDAO.getSymptomById(id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          SymptomDetailsBody(symptom),
          TopAppBarSymptoms(),
        ],
      ),
    );
  }
}
