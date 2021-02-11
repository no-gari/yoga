import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yogaon/size_config.dart';

class ClassesComponent extends StatelessWidget {
  ClassesComponent({
    Key key,
    this.instructorName = '김수경',
    this.subTitle = '[코어+근력 강화]',
    this.title = "'12회' 수업으로 복근 만들기",
    this.rate_avg = 3.5,
    this.people_cnt = 190,
    this.card_width,
  }) : super(key: key);

  final String instructorName;
  final String subTitle;
  final title;
  final double rate_avg;
  final int people_cnt;
  final double card_width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionalWidth(230),
      padding: EdgeInsets.all(getProportionalWidth(20)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: getProportionalWidth(220),
                height: getProportionateHeight(150),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/themeyoga.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.center),
                ),
              ),
              SizedBox(
                height: getProportionateHeight(10),
              ),
              RichText(
                text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: '$subTitle '),
                      TextSpan(text: '$title')
                    ]),
              ),
              Container(
                  padding:
                      EdgeInsets.fromLTRB(0, getProportionateHeight(5), 0, 0),
                  child: Divider(
                    color: Colors.grey[600],
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: getProportionalWidth(10),
              ),
              CircleAvatar(
                radius: getProportionalWidth(25),
                backgroundImage: AssetImage('assets/images/instructor.jpg'),
              ),
              SizedBox(
                width: getProportionalWidth(15),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: '강사 '),
                        TextSpan(
                            text: '$instructorName',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
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
                        itemSize: getProportionalWidth(9),
                        direction: Axis.horizontal,
                      ),
                      SizedBox(
                        width: getProportionalWidth(5),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: getProportionalWidth(10),
                              color: Colors.black),
                          children: [
                            TextSpan(text: '$rate_avg'),
                            TextSpan(text: '($people_cnt)'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
