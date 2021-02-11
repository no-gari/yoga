import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/price_class_component.dart';
import 'package:yogaon/size_config.dart';

import 'home_header.dart';

class RecommendClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeHeader(greenText: '당신만을 위한', blackText: ' 추천 수업'),
        SizedBox(
          height: getProportionateHeight(10),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
              0, getProportionalWidth(5), 0, getProportionalWidth(5)),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PriceClassComponent(),
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
