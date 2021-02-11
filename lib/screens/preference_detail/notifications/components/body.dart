import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/preference_detail/notifications/components/alarm_row.dart';
import 'package:yogaon/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionalWidth(20),
            vertical: getProportionateHeight(30)),
        child: Column(
          children: [
            AlarmRow(),
            SizedBox(height: getProportionateHeight(20)),
            YogaonButtonComponent(buttonText: '변경 완료')
          ],
        ),
      ),
    );
  }
}
