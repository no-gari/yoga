import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/profile/components/main_body_component.dart';

class Height extends StatefulWidget {
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Container(child: MainBodyComponent(title: '신장', content: '190cm'));
  }
}
