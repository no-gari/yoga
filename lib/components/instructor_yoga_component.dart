import 'package:flutter/material.dart';

class InstructorYogaComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: '김수경 '),
                        TextSpan(text: '강사의\n'),
                        TextSpan(text: '수업 둘러보기'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
