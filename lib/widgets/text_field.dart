import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final Icon icon;
  AppTextField({@required this.title, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 325,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: title,
              labelStyle:
                  TextStyle(color: Colors.grey, fontSize: 18, letterSpacing: 1),
              prefixIcon: icon)),
    );
  }
}
