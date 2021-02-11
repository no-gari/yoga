import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/options/age_choice_screen.dart';

class SexChoiceScreen extends StatelessWidget {
  static String routeName = '/sex_choice_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '성별을 선택해주세요.',
              style: Theme.of(context).textTheme.headline2,
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  YogaonButtonComponent(
                    buttonText: '남자',
                    buttonRouteName: AgeChoiceScreen.routeName,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  YogaonButtonComponent(
                    buttonText: '여자',
                    buttonRouteName: AgeChoiceScreen.routeName,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
