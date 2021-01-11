import 'package:flutter/material.dart';

class HamburgerAppbarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'yogaon',
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: [Icon(Icons.notifications_outlined)],
    );
  }
}
