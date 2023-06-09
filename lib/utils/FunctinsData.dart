import 'package:flutter/material.dart';
import 'package:flutter_app/Animation/Animation1.dart';
import 'package:flutter_app/Animation/Animation2.dart';
import 'package:flutter_app/App_screen/clippath/ClipPath.dart';
import 'package:flutter_app/App_screen/clippath/ClipPath1.dart';
import 'package:flutter_app/App_screen/clippath/ClipPath2.dart';
import 'package:flutter_app/App_screen/clippath/ClipPathScreen.dart';
import 'package:flutter_app/App_screen/gridView/GridView2.dart';
import 'package:flutter_app/App_screen/gridView/gridview3.dart';
import 'package:flutter_app/App_screen/login/login1/LoginOne.dart';
import 'package:flutter_app/widget/ScaleRoute.dart';

class AppFunction {
  static var clipPaths = [
    'design 1',
    'design 2',
    'design 3',
  ];
  static var gridview = [
    'design 1',
    'design 2',
  ];
  static var animation = [
    'design 1',
    'design 2',
  ];
  static var login = [
    'design 1',
  ];

  static void getclipPathDashboardPage(BuildContext context, String title) {
    switch (title) {
      case 'design 1':
        Navigator.push(context, ScaleRoute(page: WaveHeader()));
        break;
      case 'design 2':
        Navigator.push(context, ScaleRoute(page: WaveHeaderOne()));
        break;
      case 'design 3':
        Navigator.push(context, ScaleRoute(page: WaveHeaderTwo()));
        break;
      case 'ClipPath':
        Navigator.push(context, ScaleRoute(page: ClipPathScreen(clipPaths)));
        break;
    }
  }

  static void getGridDashboardPage(BuildContext context, String title) {
    switch (title) {
      case 'design 1':
        Navigator.push(context, ScaleRoute(page: GridViewTwo()));
        break;
      case 'design 2':
        Navigator.push(context, ScaleRoute(page: GridViewThree()));
        break;
    }
  }

  static void getAnimationDashboardPage(BuildContext context, String title) {
    switch (title) {
      case 'design 1':
        Navigator.push(context, ScaleRoute(page: AnimOne()));
        break;
      case 'design 2':
        Navigator.push(context, ScaleRoute(page: AnimationTwo()));
        break;
    }
  }

  static void getLoginPage(BuildContext context, String title) {
    switch (title) {
      case 'design 1':
        Navigator.push(context, ScaleRoute(page: LoginOne()));
        break;
    }
  }
}
