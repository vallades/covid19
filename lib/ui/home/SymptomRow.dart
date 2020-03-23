import 'package:covid/model/symptom.dart';
import 'package:covid/ui/symptoms/SymptomDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:covid/Theme.dart' as Theme;

class SymptomRow extends StatelessWidget {
  final Symptom symptom;

  SymptomRow(this.symptom);

  @override
  Widget build(BuildContext context) {
    final symptomThumb = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 25.0),
      child: new Hero(
        tag: 'symptom-icon-${symptom.id}',
        child: new Image(
          image: new AssetImage(symptom.image),
          height: Theme.Dimens.symptomHeight,
          width: Theme.Dimens.symptomWidth,
        ),
      ),
    );

    final symptomCard = new Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: new BoxDecoration(
        color: Theme.Colors.symptomCard,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(6.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
            offset: new Offset(0.0, 2.0),
          )
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 15.0, left: 70.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              symptom.name,
              style: Theme.TextStyles.symptomTitle,
            ),
            new Text(
              symptom.description,
              style: Theme.TextStyles.symptomLocation,
            ),
            new Container(
              color: const Color(0xFF00C6FF),
              width: 25.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
            ),
            new Row(
              children: <Widget>[
                new Icon(
                  Icons.location_on,
                  size: 14.0,
                  color: Theme.Colors.symptomDistance,
                ),
                new Text(
                  symptom.name,
                  style: Theme.TextStyles.symptomDistance,
                ),
                new Container(width: 24.0),
                new Icon(
                  Icons.flight_land,
                  size: 14.0,
                  color: Theme.Colors.symptomDistance,
                ),
                new Text(
                  symptom.name,
                  style: Theme.TextStyles.symptomDistance,
                ),
              ],
            )
          ],
        ),
      ),
    );

    return Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 15.0, bottom: 10.0),
      child: new FlatButton(
          onPressed: () => _navigateToSymptom(context, symptom.id),
          child: new Stack(
            children: <Widget>[
              symptomCard,
              symptomThumb,
            ],
          )),
    );
  }

  _navigateToSymptom(context, String id) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => SymptomDetailsPage(id))
    );

  }
}
