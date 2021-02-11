import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/price_class_component.dart';
import 'package:yogaon/components/classes/themeyoga_componet.dart';
import 'package:yogaon/screens/home/components/my_classse.dart';
import 'package:yogaon/screens/home/components/recommend_class.dart';
import 'package:yogaon/screens/home/components/sorted_class.dart';
import 'package:yogaon/screens/home/components/theme_yoga.dart';
import 'package:yogaon/size_config.dart';

import '../../../constants.dart';
import 'home_header.dart';
import 'other_classes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            getProportionalWidth(20), getProportionateHeight(20), 0, 0),
        child: Column(
          children: [
            Myclasses(),
            SizedBox(height: getProportionateHeight(20)),
            RecommendClass(),
            SizedBox(height: getProportionateHeight(20)),
            ThemeYoga(),
            SizedBox(height: getProportionateHeight(20)),
            SortedClasses(),
            SizedBox(height: getProportionateHeight(20)),
            OtherClasses(),
          ],
        ),
      ),
    );
  }
}
