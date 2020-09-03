import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/widgets/Buttons.dart';
import 'package:Kangaroo/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Stack(
            children: [
              Container(
                  width: size.width,
                  child: Image.asset(
                    'assets/map.png',
                    fit: BoxFit.cover,
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: AppTextField(
                          icon: Icon(Icons.search),
                          title: 'search',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 150),
                        alignment: Alignment.center,
                        child: Image.asset('assets/Ellipse 2.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 150, right: 10),
                        alignment: Alignment.centerRight,
                        child: Transform.rotate(
                          angle: 50 * pi / 180.0, // check this math formulaa
                          child: IconButton(
                              icon: Icon(
                                Icons.navigation,
                                color: kprimarycolor,
                                size: 38,
                              ),
                              onPressed: () {
                                //
                              }),
                        ),
                      ),
                    ],
                  )),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 500),
                child: AppButton(
                    title: 'Save Address',
                    colour: kprimarycolor,
                    route: '/RequestService'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
