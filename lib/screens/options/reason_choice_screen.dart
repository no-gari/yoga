import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import '';
import 'frequency_choice_screen.dart';

class ReasonChoiceScreen extends StatelessWidget {
  static String routeName = '/reason_choice_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '수련 목표가 무엇인가요?',
              style: Theme.of(context).textTheme.headline2,
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  YogaonButtonComponent(
                      buttonText: '몸매 관리',
                      buttonRouteName: FrequencyChoiceScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '유연성 향상',
                      buttonRouteName: FrequencyChoiceScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '체중 감량',
                      buttonRouteName: FrequencyChoiceScreen.routeName),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                      buttonText: '심리적 안정',
                      buttonRouteName: FrequencyChoiceScreen.routeName)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
