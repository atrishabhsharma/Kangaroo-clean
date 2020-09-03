import 'package:flutter/material.dart';
import '../Constants.dart';

class AppNavigationBar extends StatefulWidget {
  @override
  _AppNavigationBarState createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: kprimarycolor,
      iconSize: 32,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentindex,
      items: [
        BottomNavigationBarItem(
          title: Text('Profile'),
          icon: Icon(Icons.person_outline),
        ),
        BottomNavigationBarItem(
          title: Text('Request'),
          icon: Icon(Icons.add_shopping_cart),
        ),
        BottomNavigationBarItem(
          title: Text('Service'),
          icon: Icon(Icons.access_time),
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentindex = index;
          changeme(_currentindex);
        });
      },
    );
  }

  void changeme(int currentindex) {
    if (currentindex == 0) {
      Navigator.pushNamed(context, '/Profile');
    } else if (currentindex == 1) {
      Navigator.pushNamed(context, '/RequestService');
    } else {
      Navigator.pushNamed(context, '/ServiceContact');
    }
  }
}
