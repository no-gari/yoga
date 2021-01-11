import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yogaon/components/hamburger_appbar_component.dart';
import 'package:yogaon/components/instructor_yoga_component.dart';
import 'package:yogaon/components/themeyoga_componet.dart';
import 'package:yogaon/components/yogatype_component.dart';
import 'package:yogaon/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: HamburgerAppbarComponent(),
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: ListView(
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                      text: '오직 당신만을 위한,\n',
                      style: Theme.of(context).textTheme.headline3),
                  TextSpan(
                      text: '테마별 요가 ', style: TextStyle(color: kPrimaryColor)),
                  TextSpan(text: '추천'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 30),
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ThemeYogaComponent(),
                  ThemeYogaComponent(),
                  ThemeYogaComponent(),
                ],
              ),
            ),
            Text(
              '종류별 요가',
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  .copyWith(color: kPrimaryColor),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 30),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  YogaTypeCardWidget(),
                  YogaTypeCardWidget(),
                  YogaTypeCardWidget(),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                    text: '다른 수업 ',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  TextSpan(text: '둘러보기'),
                ],
              ),
            ),
            InstructorYogaComponent()
          ],
        ),
      ),
    );
  }
}
