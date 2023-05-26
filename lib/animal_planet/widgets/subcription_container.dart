import 'package:flutter/material.dart';
import 'package:flutter_app/animal_planet/urils/text_style.dart';
class SubscriptionContainer extends StatelessWidget {

  final String amount;
  final String text;
  final String imagePath;

  SubscriptionContainer({this.amount, this.text, this.imagePath});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.srcATop
              ),
              child: Image.asset(
                imagePath,
                height: size.height * 0.6 / 4,
                width: size.width - 32,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            bottom: 0.0,
            right: 16.0,
            left: 16.0,
            child: Row(
              children: <Widget>[
                Text(
                  text,
                  style: TextStyles.subscriptionTextStyle,
                ),
                Spacer(),
                Text(
                  '\$$amount',
                  style: TextStyles.subscriptionAmountTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
