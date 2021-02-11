import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/home/home_screen.dart';
import 'package:yogaon/size_config.dart';

class RecommendationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.fromLTRB(
          getProportionalWidth(40), 0, getProportionalWidth(40), 0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
        child: YogaonButtonComponent(
          buttonText: '건너뛰고 시작하기',
          buttonTextColor: Colors.grey[400],
          buttonColor: Colors.white,
        ),
      ),
    );
  }
}
