import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';
import 'components/body.dart';

class FAQ extends StatelessWidget {
  static String routeName = '/faq';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppbarComponent(title: '자주 묻는 질문'),
      body: Body(),
    );
  }
}
