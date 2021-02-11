import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/preference_detail/profile/components/birthday.dart';
import 'package:yogaon/screens/preference_detail/profile/components/profile_pic_change.dart';
import 'package:yogaon/screens/preference_detail/profile/components/weight.dart';
import 'package:yogaon/screens/preference_detail/profile/components/willing_time.dart';
import 'package:yogaon/screens/preference_detail/profile/components/yoga_goal.dart';
import 'package:yogaon/size_config.dart';

import 'height.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getProportionateHeight(15)),
        child: Column(
          children: [
            ProfilePicChange(),
            Birthday(),
            Height(),
            Weight(),
            YogaGoal(),
            WillingTime(),
            SizedBox(
              height: getProportionateHeight(30),
            ),
            YogaonButtonComponent(buttonText: '변경 완료')
          ],
        ),
      ),
    );
  }
}
