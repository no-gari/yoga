import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yogaon/size_config.dart';

class WriteBoard extends StatefulWidget {
  @override
  _WriteBoardState createState() => _WriteBoardState();
}

class _WriteBoardState extends State<WriteBoard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // padding: EdgeInsets.only(left: getProportionalWidth(10)),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '문의 사항을 입력해주세요.\n',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(fontWeight: FontWeight.bold)),
            TextSpan(text: '\n', style: TextStyle(fontSize: 3)),
            TextSpan(
                text: '이메일로 최대한 빨리 답변 드리도록 하겠습니다.',
                style: Theme.of(context).textTheme.bodyText2)
          ])),
        ),
        SizedBox(
          height: getProportionateHeight(16),
        ),
        Container(
          width: double.infinity,
          height: getProportionateHeight(200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                '어떤 문제가 있으신가요?.',
                style: TextStyle(color: Colors.grey[400]),
              )),
        )
      ],
    );
  }
}
