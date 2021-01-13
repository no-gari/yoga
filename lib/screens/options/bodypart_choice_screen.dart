import 'package:flutter/material.dart';
import 'package:yogaon/components/yogaon_button_component.dart';
import 'package:yogaon/screens/options/recommendation_screen.dart';
import 'package:yogaon/screens/yogaon/home_screen.dart';

class BodypartChoiceScreen extends StatelessWidget {
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return RecommendationScreen();
                  }),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    YogaonButtonComponent(
                      buttonText: '어깨와 팔',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '허리와 엉덩이',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '다리',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '없',
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
