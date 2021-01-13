import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';

class YogaonButtonComponent extends StatelessWidget {
  YogaonButtonComponent({
    this.buttonText = '임의의 글',
    this.buttonHeight = 45,
    this.buttonWidth = double.infinity,
    this.buttonColor = const Color(0xFFC1E6D4),
    this.buttonTextColor = Colors.white,
  });

  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonColor;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: Text(
        '$buttonText',
        style: TextStyle(
            color: buttonTextColor, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
