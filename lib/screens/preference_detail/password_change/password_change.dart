import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';

import 'components/body.dart';

class PasswordChange extends StatelessWidget {
  static String routeName = '/password_change';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppbarComponent(
        title: '비밀번호 변경',
      ),
      body: Body(),
    );
  }
}
