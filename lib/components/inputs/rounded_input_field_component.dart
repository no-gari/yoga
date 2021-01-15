import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/rounded_container_component.dart';
import 'package:yogaon/constants.dart';

class RoundedInputfieldComponent extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputfieldComponent({
    Key key,
    this.hintText = '이메일',
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainerComponent(
      child: TextField(
        onChanged: onChanged,
        // cursorColor: kPrimaryColor,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            // color: kPrimaryColor,
            color: Colors.grey[400],
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            // color: kPrimaryColor,
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
