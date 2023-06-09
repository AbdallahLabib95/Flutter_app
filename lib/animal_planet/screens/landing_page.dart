import 'package:flutter/material.dart';
import 'package:flutter_app/animal_planet/common/custom_app_bar.dart';
import 'package:flutter_app/animal_planet/urils/text_style.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'choose_plan_screen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/elephant.jpg",
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: <Widget>[
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 32.0,
                  left: 32.0,
                  right: 32.0,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: S.of(context).ready_to_watch,
                        style: TextStyles.bigHeadingTextStyle,
                      ),
                      TextSpan(text: '\n'),
                      TextSpan(
                        text: S.of(context).ready_to_watch_des,
                        style: TextStyles.bodyTextStyle,
                      ),
                      TextSpan(text: '\n'),
                      TextSpan(text: '\n'),
                      TextSpan(
                        text: S.of(context).start_enjoying,
                        style: TextStyles.buttonTextStyle,
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChoosePlanScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDAD4CC).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4, -0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
