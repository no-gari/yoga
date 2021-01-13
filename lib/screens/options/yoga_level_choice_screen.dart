import 'package:flutter/material.dart';
import 'package:yogaon/components/yogaon_button_component.dart';
import 'package:yogaon/screens/options/reason_choice_screen.dart';
import 'package:yogaon/screens/options/recommendation_screen.dart';
import 'package:yogaon/screens/yogaon/home_screen.dart';

class YogaLevelChoiceScreen extends StatelessWidget {
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ReasonChoiceScreen();
                  }),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    YogaonButtonComponent(
                      buttonText: '초급',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '중급',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '고급',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}