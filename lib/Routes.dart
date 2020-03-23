import 'package:covid/ui/symptoms/SymptomDetailsPage.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Router _router = new Router();

  static var symptomsDetailHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return new SymptomDetailsPage(params["id"]);
      });

  static void initRoutes() {
    _router.define("/details/:id", handler: symptomsDetailHandler);
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _router.navigateTo(context, route, transition: transition);
  }
}