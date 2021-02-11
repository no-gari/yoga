import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/yogatype_component.dart';

import 'home_header.dart';

class SortedClasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeHeader(greenText: '종류별 요가'),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 3),
          child: Row(
            children: [
              YogaTypeCardWidget(),
              YogaTypeCardWidget(),
              YogaTypeCardWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
