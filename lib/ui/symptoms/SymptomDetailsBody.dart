import 'package:covid/model/symptom.dart';
import 'package:flutter/material.dart';
import 'package:covid/Theme.dart' as Theme;

class SymptomDetailsBody extends StatelessWidget {

  final Symptom symptom;

  SymptomDetailsBody(this.symptom);

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          color: Theme.Colors.symptomPageBackground,
          child: new Center(
            child: new Hero(
                tag: 'symptom-ico-${symptom.id}',
                child: new Image(
                    image: new AssetImage(symptom.image),
                    height: Theme.Dimens.symptomHeight,
                    width: Theme.Dimens.symptomWidth,
                ),
            ),
          ),
        )
      ],
    );
  }
}
