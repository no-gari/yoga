import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/options/yoga_level_choice_screen.dart';

class AgeChoiceScreen extends StatelessWidget {
  static String routeName = '/agechoice_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '해당 연령대를 선택해주세요.',
              style: Theme.of(context).textTheme.headline2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return YogaLevelChoiceScreen();
                  }),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    YogaonButtonComponent(
                      buttonText: '24세 이하',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '25세 이상 29세 이하',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '30세 이상 34세 이하',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    YogaonButtonComponent(
                      buttonText: '35세 이상',
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
