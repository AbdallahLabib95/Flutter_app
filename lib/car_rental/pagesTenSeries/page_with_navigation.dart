import 'package:flutter/material.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/discover1.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/profile.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/trips.dart';
import 'package:flutter_app/car_rental/widgets/bottom_nav_bar.dart';

import 'dashborad.dart';
import 'message1.dart';

class Page101 extends StatefulWidget {
  @override
  _Page101State createState() => _Page101State();
}

class _Page101State extends State<Page101> {
  Widget _widget = Discover1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(onIconPressedCallback: onBottomIconPressed,),
      body: _widget,
    );
  }
  void onBottomIconPressed(int index) {
    switch (index) {
      case 0:
        setState(() {
          _widget = Discover1();
        });
        break;
      case 1:
        setState(() {
          _widget = Dashboard();
        });
        break;
      case 2:
        setState(() {
          _widget = Trips();
        });
        break;
      case 3:
        setState(() {
          _widget = MessagePage1();
        });
        break;
      case 4:
        setState(() {
          _widget = Profile();
        });
        break;
    }
  }
}
