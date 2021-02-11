import 'package:flutter/material.dart';
import 'package:yogaon/screens/profile/components/my_classes.dart';
import 'package:yogaon/screens/profile/components/piechart.dart';
import 'package:yogaon/screens/profile/components/preferences.dart';
import 'package:yogaon/screens/profile/components/profile_header.dart';
import 'package:yogaon/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
            vertical: getProportionateHeight(30),
            horizontal: getProportionalWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            SizedBox(height: getProportionateHeight(30)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  PieChartGraph(),
                  SizedBox(height: getProportionateHeight(30)),
                  MyClasses(),
                  Container(
                      child: Divider(
                        color: Colors.grey,
                      ),
                      padding:
                          EdgeInsets.only(top: getProportionateHeight(30))),
                  Preferences(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
