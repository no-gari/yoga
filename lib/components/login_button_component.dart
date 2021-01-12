import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginButtonComponent extends StatelessWidget {
  LoginButtonComponent(
      {this.buttonTextColor = Colors.black,
      this.buttonColor,
      this.buttonText,
      this.faIcon});

  final Color buttonTextColor;
  final Color buttonColor;
  final String buttonText;
  final Widget faIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          faIcon,
          SizedBox(
            width: 20,
          ),
          Text(
            '$buttonText',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold, color: buttonTextColor),
          )
        ],
      ),
    );
  }
}
