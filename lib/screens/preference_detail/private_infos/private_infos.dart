import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';
import 'components/body.dart';

class PrivateInfo extends StatelessWidget {
  static String routeName = '/private_info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppbarComponent(
        title: '개인정보 처리방침',
      ),
      body: Body(),
    );
  }
}
