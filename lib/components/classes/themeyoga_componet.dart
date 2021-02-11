import 'package:flutter/material.dart';
import 'package:yogaon/size_config.dart';

class ThemeYogaComponent extends StatelessWidget {
  ThemeYogaComponent(
      {Key key, this.source = 'assets/images/themeyoga.jpg', this.onTap})
      : super(key: key);

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
        height: getProportionateHeight(120),
        width: getProportionalWidth(175),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0.5, 0.5), // changes position of shadow
              ),
            ],
            border: Border.all(color: Colors.grey.withOpacity(0.2)),
            image: DecorationImage(
              image: AssetImage('$source'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
      ),
    );
  }
}
