import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/profile/components/main_body_component.dart';

class Birthday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MainBodyComponent(title: '생년월일', content: '2000.01.01'),
    );
  }
}
