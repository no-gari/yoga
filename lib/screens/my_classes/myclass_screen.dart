import 'package:flutter/material.dart';
import 'package:yogaon/components/custom_bottom_navbar.dart';
import 'package:yogaon/enums.dart';
import 'package:yogaon/screens/my_classes/components/body.dart';

class MyclassScreen extends StatelessWidget {
  static String routeName = '/my_class';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(),
          title: Text(
            '내 수업',
            style: Theme.of(context).textTheme.headline3,
          ),
          elevation: 1),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.my_courses,
      ),
    );
  }
}
