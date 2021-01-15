import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/classes_components.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/constants.dart';

class RecommendationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 110, bottom: 70),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline1.copyWith(),
                  children: [
                    TextSpan(
                      text: '리디',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(text: '님께\n'),
                    TextSpan(text: '추천드리는 수업!.'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                padding: const EdgeInsets.symmetric(),
                height: 370,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: ClassesComponent(),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: ClassesComponent(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Text(
                  '클릭시 수업 상세 페이지로 이동합니다.',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.grey[700]),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(right: 20),
              child: YogaonButtonComponent(
                buttonText: '건너뛰고 시작하기',
                buttonTextColor: Colors.grey[700],
                buttonColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
