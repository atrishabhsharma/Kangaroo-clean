import 'package:Kangaroo/widgets/service_list.dart';
import 'package:flutter/material.dart';

class ServicesContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 100.0,
        backgroundColor: Color(0xffF9F9F9),
        title: Text(
          'Services',
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            ServiceList(
                title: 'ABC Cleaners',
                dayntime: 'May 2nd, 2020 at 2:00 PM',
                status: 'Drying',
                cost: 14.56),
            ServiceList(
                title: 'simply Cleaners  ',
                dayntime: 'May 2nd, 2020 at 2:00 PM',
                status: 'Drying',
                cost: 14.56),
            ServiceList(
                title: 'Landary  ',
                dayntime: 'May 2nd, 2020 at 2:00 PM',
                status: 'Drying',
                cost: 14.56),
            ServiceList(
                title: 'Moosewala  ',
                dayntime: 'May 2nd, 2020 at 2:00 PM',
                status: 'Done',
                cost: 14.56),
            ServiceList(
                title: 'Ami virk clean  ',
                dayntime: 'May 2nd, 2020 at 2:00 PM',
                status: 'Drying',
                cost: 14.56),
            ServiceList(
                title: 'ABC Cleaners  ',
                dayntime: 'May 2nd, 2020 at 2:00 PM',
                status: 'Drying',
                cost: 14.56),
            ServiceList(
                title: 'mike Cleans  ',
                dayntime: 'May 23nd, 2020 at 4:00 PM',
                status: 'Done',
                cost: 14.56),
          ],
        ),
      ),
    );
  }
}
