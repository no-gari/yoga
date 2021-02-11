import 'package:flutter/material.dart';
import 'package:yogaon/size_config.dart';

class RecommendationText extends StatelessWidget {
  RecommendationText({Key key, this.username = '민주'}) : super(key: key);

  final username;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(getProportionalWidth(20), 0, 0, 0),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headline1,
          children: [
            TextSpan(text: '$username'),
            TextSpan(text: '님께\n'),
            TextSpan(text: '추천드리는 수업!\n'),
            TextSpan(
                text: '클릭시 수업 상세페이지로 이동합니다.',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
