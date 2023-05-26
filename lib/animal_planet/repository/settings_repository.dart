import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/animal_planet/common/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

Setting setting;
ValueNotifier<Locale> locale = ValueNotifier(Locale('en', ''));

void saveLanguageCode(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("code", languageCode??null);
}

Future<String> getLanguageCode() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('code')??'en';
}

void setBrightness(Brightness brightness) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  brightness == Brightness.dark ? prefs.setBool("isDark", true) : prefs.setBool("isDark", false);
}
