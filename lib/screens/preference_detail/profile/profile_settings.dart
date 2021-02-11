import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';
import 'components/body.dart';

class ProfileSettings extends StatelessWidget {
  static String routeName = '/profile_settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppbarComponent(title: '프로필 수정'),
      body: Body(),
    );
  }
}
