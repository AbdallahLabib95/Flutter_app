import 'package:flutter/material.dart';
import 'package:flutter_app/animal_planet/common/custom_app_bar.dart';
import 'package:flutter_app/animal_planet/screens/quick_category.dart';
import 'package:flutter_app/animal_planet/urils/text_style.dart';
import 'package:flutter_app/animal_planet/widgets/related_widger.dart';
import 'package:flutter_app/generated/l10n.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/elephant.jpg",
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: <Widget>[
                      CustomAppBar(
                        opacity: 1.0,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0.0, -0.6),
                          child: Text(
                            S.of(context).welcomeToAPlanet,
                            style: TextStyles.bigHeadingTextStyle
                                .copyWith(fontSize: 32),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFB98959),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      S.of(context).relatedToYou,
                      style: TextStyles.buttonTextStyle,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          RelateToYou(
                            imagePath: "assets/tiger.jpg",
                            title: S.of(context).lifeWithATiger,
                            subTitle: S.of(context).loremIpsum,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          RelateToYou(
                            imagePath: "assets/wild_animals.jpeg",
                            title: S.of(context).wildAnimals,
                            subTitle: S.of(context).loremIpsum,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Text(
                      S.of(context).quickCategories,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        QuickCategory(
                          imagePath:  "assets/bear.png",
                          title: S.of(context).bear,
                        ),
                        QuickCategory(
                          imagePath:   "assets/lion.png",
                          title: S.of(context).lion,
                        ),
                        QuickCategory(
                          imagePath:  "assets/reptiles.png",
                          title: S.of(context).reptiles,
                        ),
                        QuickCategory(
                          imagePath:  "assets/pets.png",
                          title: S.of(context).pets,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
