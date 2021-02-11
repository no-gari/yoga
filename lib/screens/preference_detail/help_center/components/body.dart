import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/preference_detail/help_center/components/write_board.dart';
import 'package:yogaon/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateHeight(30),
          horizontal: getProportionalWidth(20)),
      child: Column(children: [
        WriteBoard(),
        SizedBox(height: getProportionateHeight(20)),
        YogaonButtonComponent(buttonText: '제출하기')
      ]),
    );
  }
}
