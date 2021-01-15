import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';

class RoundedContainerComponent extends StatelessWidget {
  final Widget child;
  const RoundedContainerComponent({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: child,
    );
  }
}
