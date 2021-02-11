import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yogaon/screens/chats/chat_screen.dart';
import 'package:yogaon/screens/home/home_screen.dart';
import 'package:yogaon/screens/my_classes/myclass_screen.dart';
import 'package:yogaon/screens/profile/profile_screen.dart';
import 'package:yogaon/size_config.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key key, @required this.selectedMenu})
      : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: Colors.grey[300],
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButtonWidget(
              changedColor: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : Color(0xFFB6B6B6),
              route: HomeScreen(),
              imageSource: "assets/icons/home.svg",
            ),
            IconButtonWidget(
              changedColor: MenuState.my_courses == selectedMenu
                  ? kPrimaryColor
                  : Color(0xFFB6B6B6),
              route: MyclassScreen(),
              imageSource: "assets/icons/my_classes.svg",
            ),
            IconButtonWidget(
              changedColor: MenuState.chat == selectedMenu
                  ? kPrimaryColor
                  : Color(0xFFB6B6B6),
              route: ChatScreen(),
              imageSource: "assets/icons/chat.svg",
            ),
            IconButtonWidget(
              changedColor: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : Color(0xFFB6B6B6),
              route: ProfileScreen(),
              imageSource: "assets/icons/profile.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {Key key,
      @required this.imageSource,
      @required this.changedColor,
      @required this.route})
      : super(key: key);

  final Color changedColor;
  final String imageSource;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: getProportionalWidth(40),
      icon: SvgPicture.asset(
        '$imageSource',
        color: changedColor,
        width: double.infinity,
      ),
      onPressed: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 200),
            child: route,
          ),
        );
      },
    );
  }
}
