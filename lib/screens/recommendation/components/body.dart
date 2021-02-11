import 'package:flutter/material.dart';
import 'package:yogaon/screens/recommendation/components/button.dart';
import 'package:yogaon/screens/recommendation/components/carousel.dart';
import 'package:yogaon/screens/recommendation/components/recommendation_text.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: RecommendBoxDeoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecommendationText(),
          SizedBox(height: getProportionateHeight(25)),
          CustomCarousel(),
          SizedBox(height: getProportionateHeight(25)),
          RecommendationButton(),
        ],
      ),
    );
  }

  BoxDecoration RecommendBoxDeoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xFFC1E6D4),
          const Color(0xFF9ADABE),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.0, 1.0),
      ),
    );
  }
}
