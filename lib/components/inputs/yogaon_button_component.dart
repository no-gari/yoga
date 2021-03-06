import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';

class YogaonButtonComponent extends StatelessWidget {
  YogaonButtonComponent({
    this.buttonText = '임의의 글',
    this.buttonHeight = 45,
    this.buttonWidth = double.infinity,
    this.buttonColor = const Color(0xFF9ADABE),
    this.buttonTextColor = Colors.white,
    this.buttonRouteName,
  });

  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonColor;
  final Color buttonTextColor;
  final String buttonRouteName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, buttonRouteName);
      },
      child: Container(
        alignment: Alignment.center,
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
          border: Border.all(color: kBackgroundColorMain),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          '$buttonText',
          style: TextStyle(
              color: buttonTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
