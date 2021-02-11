import 'package:flutter/material.dart';
import 'package:yogaon/screens/home/components/my_classse.dart';
import 'package:yogaon/size_config.dart';

class MyClasses extends StatefulWidget {
  @override
  _MyClassesState createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: getProportionateHeight(15)),
          child: RichText(
            text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: '수강중인 '),
                  TextSpan(text: '클래스'),
                ]),
          ),
        ),
        MyclassContainer(rightMargin: 0, leftPadding: 10),
        MyclassContainer(rightMargin: 0, leftPadding: 10),
        MyclassContainer(rightMargin: 0, leftPadding: 10),
      ],
    );
  }
}
