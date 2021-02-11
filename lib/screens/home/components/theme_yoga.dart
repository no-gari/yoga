import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/themeyoga_componet.dart';
import 'package:yogaon/size_config.dart';
import 'home_header.dart';

class ThemeYoga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeHeader(greenText: '테마별 요가 ', blackText: '추천'),
        SizedBox(
          height: getProportionateHeight(10),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 3),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ThemeYogaComponent(),
              ThemeYogaComponent(),
            ],
          ),
        ),
      ],
    );
  }
}
