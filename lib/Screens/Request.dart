import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/widgets/Buttons.dart';
import 'package:Kangaroo/widgets/Store_card.dart';
import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: ktextcolor,
        child: Stack(
          children: [
            Container(
              width: size.width,
              child: Image.asset(
                'assets/map.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 130),
              decoration: BoxDecoration(
                boxShadow: [kshadow],
                color: ktextcolor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, top: 15),
                        alignment: Alignment.center,
                        child: Text(
                          'Choose Laundry Store',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: IconButton(
                            icon: Icon(
                              Icons.refresh,
                              color: kprimarycolor,
                              size: 30,
                            ),
                            onPressed: null),
                      ),

                      // AppButton(title: 'Request Service', colour: kprimarycolor, onPressed: null)
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        StoreCard(
                          title: 'Abc cleaner',
                          days: 2,
                          rating: 3,
                          cost: 3.0,
                          image: Image.asset('assets/provider.jpg'),
                        ),
                        StoreCard(
                          title: 'jack laundary',
                          days: 2,
                          rating: 3.2,
                          cost: 21.0,
                          image: Image.asset('assets/provider.jpg'),
                        ),
                        StoreCard(
                          title: 'moosewala ',
                          days: 1,
                          rating: 3.3,
                          cost: 2.0,
                          image: Image.asset('assets/provider.jpg'),
                        ),
                        StoreCard(
                          title: 'Dhobi ghat',
                          days: 3,
                          rating: 4.9,
                          cost: 22.0,
                          image: Image.asset('assets/provider.jpg'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: AppButton(
                        title: 'Request Service',
                        colour: kprimarycolor,
                        route: null),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
