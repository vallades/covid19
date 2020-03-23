import 'package:flutter/material.dart';

class Colors {

  const Colors();

  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF3383FC);
  static const Color appBarGradientEnd = const Color(0xFF00C6FF);

  static const Color homePageBackground = const Color(0xFFFFFFFF);

  static const Color symptomCard = const Color(0xFF268A4C);
  static const Color symptomPageBackground = const Color(0xFF736AB7);
  static const Color symptomTitle = const Color(0xFFFFFFFF);
  static const Color symptomLocation = const Color(0x66FFFFFF);
  static const Color symptomDistance = const Color(0x66FFFFFF);

}

class Dimens {
  const Dimens();

  static const symptomWidth = 100.0;
  static const symptomHeight = 100.0;
}

class TextStyles {

  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 36.0
  );

  static const TextStyle symptomTitle = const TextStyle(
      color: Colors.symptomTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24.0
  );

  static const TextStyle symptomLocation = const TextStyle(
      color: Colors.symptomLocation,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.0
  );

  static const TextStyle symptomDistance = const TextStyle(
      color: Colors.symptomDistance,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 12.0
  );


}