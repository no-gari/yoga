import 'package:flutter/material.dart';
import 'package:yogaon/components/custom_bottom_navbar.dart';
import 'package:yogaon/enums.dart';

import '../../size_config.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          '마이페이지',
          style: Theme.of(context).textTheme.headline3,
        ),
        elevation: 1,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
