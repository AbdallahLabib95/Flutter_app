import 'package:flutter/material.dart';

import '../main.dart';

class HotelAppTheme {

  static TextTheme _buildTextTheme(TextTheme base) {
    var fontName = "WorkSans";
    return base.copyWith(
      // ignore: deprecated_member_use
      title: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      body1: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      body2: base.subtitle1.copyWith(fontFamily: fontName),
      button: base.subtitle1.copyWith(fontFamily: fontName),
      caption: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      display1: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      display2: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      display3: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      display4: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      headline: base.subtitle1.copyWith(fontFamily: fontName),
      overline: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      subhead: base.subtitle1.copyWith(fontFamily: fontName),
      // ignore: deprecated_member_use
      subtitle: base.subtitle1.copyWith(fontFamily: fontName),
    );
  }

  static ThemeData buildLightTheme() {
    Color primaryColor = HexColor("#54D3C2");
    Color secondaryColor = HexColor("#54D3C2");
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      backgroundColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}
