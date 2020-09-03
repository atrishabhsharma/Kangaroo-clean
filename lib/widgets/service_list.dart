import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  final String title;
  final String dayntime;
  final String status;
  final double cost;
  ServiceList(
      {@required this.title,
      @required this.dayntime,
      @required this.status,
      @required this.cost});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        child: Container(
          width: 375,
          height: 95,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                width: 263,
                height: 46,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '$dayntime',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$' '$cost',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$status',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}
