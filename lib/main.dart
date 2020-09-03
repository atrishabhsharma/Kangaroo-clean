import 'package:flutter/material.dart';
import 'Screens/Location.dart';
import 'Screens/Login.dart';
import 'Screens/Payment.dart';
import 'Screens/pageview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kangaroo Clean',
      initialRoute: '/login',
      routes: {
        '/login': (_) => Login(),
        '/Payment': (_) => Payment(),
        '/Location': (_) => Location(),
        '/PageViewNavi': (_) => PageViewNavi(),
      },
    );
  }
}
