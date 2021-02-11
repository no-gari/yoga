import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';

import 'components/body.dart';

class HelpCenter extends StatelessWidget {
  static String routeName = '/help_center';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppbarComponent(title: '고객센터'),
      body: Body(),
    );
  }
}
