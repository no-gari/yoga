import 'package:flutter/material.dart';
import 'package:yogaon/components/back_appbar_component.dart';
import 'package:yogaon/components/custom_bottom_navbar.dart';
import 'package:yogaon/enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: BackAppbarComponent(
        title: '종류별 요가',
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
