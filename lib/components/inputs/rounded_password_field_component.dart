import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';
import 'rounded_container_component.dart';

class RoundedPasswordFieldComponent extends StatelessWidget {
  const RoundedPasswordFieldComponent(
      {Key key, this.helpText = '비밀번호', this.onChanged})
      : super(key: key);

  final String helpText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return RoundedContainerComponent(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: helpText,
            // hintStyle: TextStyle(color: kPrimaryColor),
            hintStyle: TextStyle(color: Colors.grey[400]),
            icon: Icon(
              Icons.lock,
              // color: kPrimaryColor,
              color: Colors.grey[400],
            ),
            suffixIcon: Icon(
              Icons.visibility_off,
              // color: kPrimaryColor,
              color: Colors.grey[400],
            ),
            border: InputBorder.none),
      ),
    );
  }
}
