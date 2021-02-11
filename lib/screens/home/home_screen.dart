import 'package:flutter/material.dart';
import 'package:yogaon/components/custom_bottom_navbar.dart';
import 'package:yogaon/components/hamburger_appbar_component.dart';
import 'package:yogaon/routes.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MainAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(55);

  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      leading: Container(),
      title: Image.asset(
        'assets/images/logo.png',
        width: getProportionalWidth(130),
      ),
      elevation: 1,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(
            Icons.notifications_outlined,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
