import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/faq/components/faq_panel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          FaqPanel(title: '중간에 취소하고 싶으면 어떻게 하나요?', content: '몰라요'),
          FaqPanel(
              title: '이전 수강기록을 볼 수 있나요?',
              content: '복습하기 페이지에서 이전 수업 영상을 확인하실 수 있습니다 :)'),
          FaqPanel(title: '코치 피드백은 무엇인가요?', content: '몰라요'),
        ],
      ),
    );
  }
}
