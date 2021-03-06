import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/options/bodypart_choice_screen.dart';
// import 'package:yogaon/screens/options/recommendation_screen.dart';
// import 'package:yogaon/screens/yogaon/home_screen.dart';

class FrequencyChoiceScreen extends StatelessWidget {
  static String routeName = '/frequency_choice_screen';

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
                    TextSpan(text: '얼마나 자주 수련할\n'),
                    TextSpan(text: '계획이신가요?'),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  YogaonButtonComponent(
                      buttonText: '주 1-2 회',
                      buttonRouteName: BodypartChoiceScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '주 3-4 회',
                      buttonRouteName: BodypartChoiceScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '매',
                      buttonRouteName: BodypartChoiceScreen.routeName)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
