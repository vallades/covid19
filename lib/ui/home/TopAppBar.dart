import 'package:flutter/material.dart';
import 'package:covid/Theme.dart' as Theme;

class TopAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 60.0;

  TopAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Center(
        child: new Text(
          title,
          style: Theme.TextStyles.appBarTitle,
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Theme.Colors.appBarGradientStart,
            Theme.Colors.appBarGradientEnd
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.5, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
