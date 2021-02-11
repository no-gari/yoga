import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';

import 'components/body.dart';

class NotificationSettings extends StatelessWidget {
  static String routeName = '/notification_settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppbarComponent(title: '알림 설정'),
      body: Body(),
    );
  }
}
