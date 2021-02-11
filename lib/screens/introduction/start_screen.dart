import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/constants.dart';
import 'package:yogaon/screens/options/sex_choice_screen.dart';

class StartScreen extends StatelessWidget {
  static String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/start.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 170, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.grey[700]),
                  children: [
                    TextSpan(text: '원하는 시간\n'),
                    TextSpan(text: '편안한 장소\n'),
                    TextSpan(text: '함께할 멤버들\n'),
                    TextSpan(
                        text: '요가온',
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .copyWith(color: kBackgroundColorLight)),
                    TextSpan(text: '으로 나를 가꾸세요.'),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
                child: YogaonButtonComponent(
                    buttonHeight: 40,
                    buttonText: '시작하러 가기',
                    buttonRouteName: SexChoiceScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
