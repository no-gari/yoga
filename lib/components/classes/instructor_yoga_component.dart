import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InstructorYogaComponent extends StatelessWidget {
  InstructorYogaComponent({
    this.instructorName = '김수경',
    this.outstandingClass = '빈야사 유연성 어쩌구',
    this.otherClasses,
    this.rate_avg = 3.5,
    this.people_cnt = 190,
    this.card_width,
  });

  final String instructorName;
  final String outstandingClass;
  final List<String> otherClasses;
  final double rate_avg;
  final int people_cnt;
  final double card_width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/instructor.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(
                            text: instructorName,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' 강사의\n'),
                        TextSpan(text: '수업 둘러보기'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: rate_avg,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 9.0,
                        direction: Axis.horizontal,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 10, color: Colors.black),
                          children: [
                            TextSpan(text: '$rate_avg'),
                            TextSpan(text: '($people_cnt)'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline6,
                children: [
                  TextSpan(
                      text: '대표 클래스\n', style: TextStyle(color: Colors.black)),
                  TextSpan(text: '$outstandingClass\n'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline6,
                children: [
                  TextSpan(
                      text: '그 외의 클래스\n',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(text: '빈야사 유연성 최고\n'),
                  TextSpan(text: '빈야사 유연성 최고\n'),
                  TextSpan(text: '빈야사 유연성 최고\n'),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
