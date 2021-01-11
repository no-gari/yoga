import 'package:flutter/material.dart';

class ThemeYogaComponent extends StatelessWidget {
  ThemeYogaComponent({this.source = 'assets/images/themeyoga.jpg', this.onTap});

  final String source;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
        height: 130,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              image: AssetImage('$source'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
      ),
    );
  }
}
