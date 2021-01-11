import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';

class RecommendationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 140, bottom: 30),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline1.copyWith(),
                children: [
                  TextSpan(
                    text: '리디',
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                  TextSpan(text: '님께\n'),
                  TextSpan(text: '추천드립니다.'),
                ],
              ),
            ),
            Row(
              children: [],
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
