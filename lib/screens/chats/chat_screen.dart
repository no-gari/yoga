import 'package:flutter/material.dart';
import 'package:yogaon/components/custom_bottom_navbar.dart';
import 'package:yogaon/enums.dart';
import 'package:yogaon/screens/chats/components/body.dart';
import 'package:yogaon/size_config.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = '/chats';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          '채팅',
          style: Theme.of(context).textTheme.headline3,
        ),
        elevation: 1,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.chat,
      ),
    );
  }
}
