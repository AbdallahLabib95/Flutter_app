import 'package:flutter/widgets.dart';
import 'package:flutter_app/animal_planet/screens/landing_page.dart';
import 'package:flutter_app/car_rental/pagesTenSeries/home_page.dart';
import 'package:flutter_app/designCourse/homeDesignCourse.dart';
import 'package:flutter_app/e_commerce/e_commerce_main.dart';
import 'package:flutter_app/fitnessApp/fitnessAppHomeScreen.dart';
import 'package:flutter_app/hotelBooking/hotelHomeScreen.dart';

class HomeList {
  Widget navigateScreen;
  String imagePath;

  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  static List<HomeList> homeList = [
    HomeList(
      imagePath: "images/hotel/hotel_booking.png",
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: "images/fitness_app/fitness_app.png",
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: "images/design_course/design_course.png",
      navigateScreen: DesignCourseHomeScreen(),
    ),
    HomeList(
      imagePath: "images/animal_world/animal.png",
      navigateScreen: LandingScreen(),
    ),
    HomeList(
      imagePath: "images/e_commerce/commerce_banner.png",
      navigateScreen: EcommerceApp(),
    ),
    HomeList(
      imagePath: "images/car_rental/car_rental.png",
      navigateScreen: MyHomePageTen(),
    ),
  ];
}
