import 'package:flutter/material.dart';

class BackAppbarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  BackAppbarComponent({this.title});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(70);
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      elevation: 1,
      title: Text(
        '$title',
        style: Theme.of(context).textTheme.headline3,
      ),
      actions: [Icon(Icons.notifications_outlined)],
    );
  }
}
