import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';

class YogaonButtonComponent extends StatelessWidget {
  YogaonButtonComponent(
      {this.buttonText = '임의의 글',
      this.buttonHeight = 45,
      this.buttonWidth = double.infinity});

  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBackgroundColorLight,
      ),
      child: Text(
        '$buttonText',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
