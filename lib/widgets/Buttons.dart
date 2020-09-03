import 'package:flutter/material.dart';
import '../Constants.dart';

class AppButton extends StatelessWidget {
  final String route;
  final Color colour;
  final String title;
  AppButton(
      {@required this.title, @required this.colour, @required this.route});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 325,
      child: RaisedButton(
          color: colour,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: Center(
              child: Text(
            title,
            style: TextStyle(color: ktextcolor, fontSize: 17),
          )),
          onPressed: () {
            Navigator.pushNamed(context, route);
          }),
    );
  }
}
