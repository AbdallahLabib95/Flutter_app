import 'package:flutter/material.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page103.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page104.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page105.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page106.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page107.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page108.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page109.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page110.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page111.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/page_with_navigation.dart';
import 'package:flutter_app/car_rental/widgets/session_card.dart';
import 'message2.dart';
import 'message3.dart';
class MyHomePageTen extends StatefulWidget {

  @override
  _MyHomePageTenState createState() => _MyHomePageTenState();
}

class _MyHomePageTenState extends State<MyHomePageTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            SessionCard(
              pagenumber: 1,
              isDone: true,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page101()));
              },
            ),
            SessionCard(
              pagenumber: 2,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page103()));
              },
            ),
            SessionCard(
              pagenumber: 3,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page104()));
              },
            ),
            SessionCard(
              pagenumber: 4,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page105()));
              },
            ),
            SessionCard(
              pagenumber: 5,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MessagePage2()));
              },
            ),
            SessionCard(
              pagenumber: 6,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MessagePage3()));
              },
            ),
            SessionCard(
              pagenumber: 7,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page106()));
              },
            ),
            SessionCard(
              pagenumber: 8,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page107()));
              },
            ),
            SessionCard(
              pagenumber: 9,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page108()));
              },
            ),
            SessionCard(
              pagenumber: 10,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page109()));
              },
            ),
            SessionCard(
              pagenumber: 11,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page110()));
              },
            ),
            SessionCard(
              pagenumber: 12,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page111()));
              },
            ),
          ],
        ),
      ),
    );
  }
}