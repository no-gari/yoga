import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';

class HomeHeader extends StatelessWidget {
  HomeHeader({this.greenText = '', this.blackText = ''});

  final String greenText;
  final String blackText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(style: Theme.of(context).textTheme.headline2, children: [
        TextSpan(text: '$greenText', style: TextStyle(color: kPrimaryColor)),
        TextSpan(text: '$blackText', style: TextStyle(color: Colors.black)),
      ]),
    );
  }
}
