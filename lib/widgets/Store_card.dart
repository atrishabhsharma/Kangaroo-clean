// import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/Constants.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String title;
  final int days;
  final double rating;
  final double cost;
  final Image image;
  StoreCard(
      {@required this.title,
      @required this.days,
      @required this.rating,
      @required this.cost,
      @required this.image});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: null,
        child: Container(
          height: 275,
          width: 275,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                width: 275,
                height: 172,
                decoration: BoxDecoration(
                  color: ktextcolor,
                  boxShadow: [kshadow],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: image),
              ),
              Container(
                height: 103,
                width: 275,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        // title
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 50,
                        ),
                        // Star icons
                        Icon(
                          Icons.star,
                          color: Color(0xffC3B427),
                        ),
                        Text(
                          '$rating',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 13,
                    ),

                    /// Second row

                    Row(
                      children: [
                        // title
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "\$" + '$cost /item',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),

                        SizedBox(
                          width: 100,
                        ),

                        Text(
                          '$days Days',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
