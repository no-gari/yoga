import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/recommendation/recommendation.dart';

class BodypartChoiceScreen extends StatelessWidget {
  static String routeName = '/body_part_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline2,
                  children: [
                    TextSpan(text: '특별히 신경 쓰는\n'),
                    TextSpan(text: '신체부위가 있으신가요?'),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  YogaonButtonComponent(
                      buttonText: '어깨와 팔',
                      buttonRouteName: RecommendationScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '허리와 엉덩이',
                      buttonRouteName: RecommendationScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '다리',
                      buttonRouteName: RecommendationScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '없다',
                      buttonRouteName: RecommendationScreen.routeName)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
