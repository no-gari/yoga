import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yogaon/constants.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/size_config.dart';

class Body extends StatelessWidget {
  Body(
      {this.source = 'assets/images/instructor.jpg',
      this.title = '기본 요가',
      this.description =
          '요가를 처읍 접하시는 분들도 쉽게 익히고 따라갈 수 있는 동작들로 구성된 커리큘럼입니다. 기본 요가는 정말로 쉬워요! 디자인은 어려워요. 이제서야 홈화면이 끝났답니다. 개발도 어려워요! 이제 시작이랍니다!',
      this.subtitle = '[초급자 코스]',
      this.onTap});

  final String title;
  final String subtitle;
  final String description;
  final String source;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(getProportionalWidth(20)),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              constraints:
                  BoxConstraints(minHeight: getProportionateHeight(570)),
              color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    getProportionalWidth(40),
                    getProportionateHeight(60),
                    getProportionalWidth(40),
                    getProportionateHeight(60)),
                child: Column(
                  children: [
                    Image.asset(
                      '$source',
                      width: double.infinity,
                      height: getProportionateHeight(170),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 15),
                    Text(
                      '$title',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                          color: kPrimaryColor, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '$subtitle',
                      style: TextStyle(
                          fontSize: getProportionalWidth(13),
                          color: Colors.grey[700]),
                    ),
                    SizedBox(height: 20),
                    Text('$description',
                        style: Theme.of(context).textTheme.bodyText2),
                    SizedBox(
                      height: getProportionateHeight(40),
                    ),
                    YogaonButtonComponent(
                      buttonText: '수업 둘러보기',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
