import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yogaon/constants.dart';

class LoginButtonComponent extends StatelessWidget {
  const LoginButtonComponent(
      {Key key,
      this.buttonTextColor = Colors.black,
      this.buttonColor = Colors.black,
      this.buttonText = '버튼 텍스트',
      this.faIcon})
      : super(key: key);

  final Color buttonTextColor;
  final Color buttonColor;
  final String buttonText;
  final Widget faIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      width: size.width * 0.85,
      // margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
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
