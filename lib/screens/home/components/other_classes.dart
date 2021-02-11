import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/price_class_component.dart';
import 'package:yogaon/size_config.dart';

import 'home_header.dart';

class OtherClasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          HomeHeader(greenText: '다른 수업 ', blackText: '둘러보기'),
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, getProportionateHeight(5), getProportionalWidth(20), 0),
            child: Text(
              '전체 수업보기>',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.grey),
            ),
          )
        ]),
        SizedBox(
          height: getProportionateHeight(15),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 30),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PriceClassComponent(),
              PriceClassComponent(),
              PriceClassComponent(),
            ],
          ),
        )
      ],
    );
  }
}
