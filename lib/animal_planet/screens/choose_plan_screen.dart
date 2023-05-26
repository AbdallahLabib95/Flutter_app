import 'package:flutter/material.dart';
import 'package:flutter_app/animal_planet/common/custom_app_bar.dart';
import 'package:flutter_app/animal_planet/urils/text_style.dart';
import 'package:flutter_app/animal_planet/widgets/subcription_container.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'DashboardScreen.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 24.0),
                child: Text(
                  S.of(context).chooseAPlan,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                text: S.of(context).weekSubscription,
                amount: '1.99',
                imagePath: "assets/weekly.jpg",
              ),
              SubscriptionContainer(
                text: S.of(context).oneMonthSubscription,
                amount: '4.99',
                imagePath: "assets/monthly.jpg",
              ),
              SubscriptionContainer(
                text: S.of(context).threeMonthSubscription,
                amount: '9.99',
                imagePath: "assets/3monthly.jpg",
              ),
              SubscriptionContainer(
                text: S.of(context).sixMonthSubscription,
                amount: '12.99',
                imagePath: "assets/6monthly.jpg",
              ),
            ],
          ),
          Positioned(
            bottom: 32.0,
            left: 16,
            child: Text(
              S.of(context).LAST_STEP_TO_ENJOY,
              style: TextStyles.buttonTextStyle,
            ),
          ),
          Positioned(
            bottom: -35,
            right: -30,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
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
