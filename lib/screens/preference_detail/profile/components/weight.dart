import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/profile/components/main_body_component.dart';

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Container(child: MainBodyComponent(title: '체중', content: '200kg'));
  }
}
