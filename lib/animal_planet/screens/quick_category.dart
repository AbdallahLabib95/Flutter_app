import 'package:flutter/material.dart';
import 'package:flutter_app/animal_planet/urils/text_style.dart';
class QuickCategory extends StatelessWidget {

  final imagePath;
  final title;


  QuickCategory({this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Color(0xFF8C5835),
          ),
          child: Image.asset(
            imagePath,
            height: 50.0,
            width: 50.0,
          ),
        ),
        SizedBox(height: 4.0,),
        Text(
          title,
          style: TextStyles.body2TextStyle,
        ),
      ],
    );
  }
}
