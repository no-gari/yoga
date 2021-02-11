import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yogaon/size_config.dart';

import 'home_header.dart';

class Myclasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: getProportionateHeight(7)),
            child: HomeHeader(greenText: '수강중', blackText: '인 클래스')),
        MyclassContainer(),
        MyclassContainer(),
        MyclassContainer(),
        MyclassContainer(),
      ],
    );
  }
}

class MyclassContainer extends StatelessWidget {
  MyclassContainer({this.rightMargin = 20.0, this.leftPadding = 0});

  final double rightMargin;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          0, getProportionateHeight(3), getProportionalWidth(rightMargin), 0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: getProportionateHeight(25),
            color: Colors.grey[100],
          ),
          Container(
            width: getProportionalWidth(7),
            color: Colors.grey[400],
            height: getProportionateHeight(25),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, getProportionateHeight(4), 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: getProportionalWidth(200),
                  child: Padding(
                    padding: EdgeInsets.only(left: leftPadding),
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: getProportionalWidth(12),
                              color: Colors.black),
                          text:
                              '[asdfasdfasdfadf] asdfasdfasdfasdasdfasdfasdfad'),
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionalWidth(75),
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: getProportionalWidth(12),
                            color: Colors.grey[600]),
                        text: '김수경 강사'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
