import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/profile/components/main_body_component.dart';

class YogaGoal extends StatefulWidget {
  @override
  _YogaGoalState createState() => _YogaGoalState();
}

class _YogaGoalState extends State<YogaGoal> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MainBodyComponent(title: '요가 목표', content: '유연성 향상'));
  }
}
