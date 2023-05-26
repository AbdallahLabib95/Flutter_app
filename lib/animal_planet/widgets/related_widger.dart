import 'package:flutter/material.dart';
import 'package:flutter_app/animal_planet/urils/text_style.dart';
class RelateToYou extends StatelessWidget {

  final imagePath;
  final title;
  final subTitle;


  RelateToYou({this.imagePath, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: const EdgeInsets.only(left: 16.0),
      width: size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Expanded(
            child: ClipRRect(
              child: Image.asset(
                imagePath,
                width: size.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              title,
              style: TextStyles.titleTextStyle,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              subTitle,
              style: TextStyles.body3TextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
