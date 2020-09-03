import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/widgets/Buttons.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Text(
                  'Please add card for payment. Your card\n'
                  '   will only be charged after ordering.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 62),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xff192C8D), Color(0xff3D5AF1)]),
                    boxShadow: [kshadow],
                    borderRadius: BorderRadius.circular(18)),
                width: 293,
                height: 183,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 32.44),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1234  5678  9012  3456',
                        style: TextStyle(
                            color: ktextcolor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 32.64),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 32.44,
                          ),
                          Text('MM/YY',
                              style: TextStyle(
                                  color: ktextcolor,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 123,
                          ),
                          Text('CVV',
                              style: TextStyle(
                                  color: ktextcolor,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                child: AppButton(
                    title: 'Add Card',
                    colour: kprimarycolor,
                    route: '/Location'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
