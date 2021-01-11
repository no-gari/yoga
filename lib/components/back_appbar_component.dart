import 'package:flutter/material.dart';

class BackAppbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      title: Text(
        'yogaon',
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: [Icon(Icons.notifications_outlined)],
    );
  }
}
