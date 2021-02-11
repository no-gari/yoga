import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';

class RecommendationScreen extends StatelessWidget {
  static String routeName = '/recommendation_screen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
