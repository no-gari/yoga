import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/options/reason_choice_screen.dart';
// import 'package:yogaon/screens/options/recommendation_screen.dart';
// import 'package:yogaon/screens/yogaon/home_screen.dart';

class YogaLevelChoiceScreen extends StatelessWidget {
  static String routeName = '/yoga_level_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '당신의 요가 실력은?',
              style: Theme.of(context).textTheme.headline2,
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  YogaonButtonComponent(
                    buttonText: '초급',
                    buttonRouteName: ReasonChoiceScreen.routeName,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                    buttonText: '중급',
                    buttonRouteName: ReasonChoiceScreen.routeName,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                    buttonText: '고급',
                    buttonRouteName: ReasonChoiceScreen.routeName,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
