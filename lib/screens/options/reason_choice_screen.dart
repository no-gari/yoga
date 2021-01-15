import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/options/frequency_choice_screen.dart';
import 'package:yogaon/screens/options/recommendation_screen.dart';
import 'package:yogaon/screens/yogaon/home_screen.dart';

class ReasonChoiceScreen extends StatelessWidget {
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FrequencyChoiceScreen();
                  }),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    YogaonButtonComponent(
                      buttonText: '몸매 관리',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '유연성 향상',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '체중 감량',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '심리적 안정',
                    )
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
