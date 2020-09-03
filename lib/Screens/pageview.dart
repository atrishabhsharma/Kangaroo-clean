import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/Screens/Profile.dart';
import 'package:Kangaroo/Screens/Request.dart';
import 'package:Kangaroo/Screens/Service_contact.dart';
import 'package:flutter/material.dart';

class PageViewNavi extends StatefulWidget {
  @override
  _PageViewNaviState createState() => _PageViewNaviState();
}

class _PageViewNaviState extends State<PageViewNavi> {
  PageController _controller = PageController(initialPage: 1);
  int _currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ktextcolor,
        child: PageView(
          controller: _controller,
          pageSnapping: true,
          children: [
            Profile(),
            Request(),
            ServicesContact(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kprimarycolor,
        iconSize: 32,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
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
            if (_currentindex == 0) {
              _controller.animateToPage(0,
                  duration: Duration(milliseconds: 2),
                  curve: Curves.bounceInOut);
            } else if (_currentindex == 1) {
              _controller.animateToPage(1,
                  duration: Duration(milliseconds: 2),
                  curve: Curves.bounceInOut);
            } else {
              _controller.animateToPage(2,
                  duration: Duration(milliseconds: 2),
                  curve: Curves.bounceInOut);
            }
          });
        },
      ),
    );
  }
}
