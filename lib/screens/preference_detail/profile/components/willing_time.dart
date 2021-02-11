import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/profile/components/main_body_component.dart';

class WillingTime extends StatefulWidget {
  @override
  _WillingTimeState createState() => _WillingTimeState();
}

class _WillingTimeState extends State<WillingTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MainBodyComponent(title: '목표 운동시간', content: '200시간 / 주'));
  }
}
