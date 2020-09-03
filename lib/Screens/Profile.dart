import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/widgets/Navigatorar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: FlatButton(
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.only(top: 7),
                alignment: Alignment.topRight,
                child: Text(
                  'Edit',
                  style: TextStyle(color: kprimarycolor, fontSize: 17),
                ),
              )),
          elevation: 1,
          toolbarHeight: 100.0,
          backgroundColor: Color(0xffF9F9F9),
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
          color: ktextcolor,
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(left: 24, top: 36),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            color: Colors.blueGrey,
                            size: 100,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Text(
                                'First Name',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(left: 15),
                              onPressed: () {},
                              child: Text(
                                'email@domain.com',
                                style: TextStyle(color: kprimarycolor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/Group 9.png'),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 65,
                    width: 325,
                    child: RaisedButton(
                        color: kprimarycolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Text(
                              'Payment',
                              style: TextStyle(color: ktextcolor, fontSize: 17),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              '******1234',
                              style: TextStyle(color: ktextcolor, fontSize: 17),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 65,
                    width: 325,
                    child: RaisedButton(
                        color: kprimarycolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Text(
                              'Support',
                              style: TextStyle(color: ktextcolor, fontSize: 17),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Image.asset('assets/Tutorial Button.png'),
                          ],
                        ),
                        onPressed: () {}),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 65,
                    width: 325,
                    child: RaisedButton(
                        color: ksecondarycolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Text(
                              'Log out',
                              style: TextStyle(color: ktextcolor, fontSize: 17),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: ktextcolor,
                              size: 50,
                            )
                          ],
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: AppNavigationBar(),
      ),
    );
  }
}
