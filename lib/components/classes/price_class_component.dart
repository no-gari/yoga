import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yogaon/size_config.dart';

class PriceClassComponent extends StatelessWidget {
  PriceClassComponent({
    Key key,
    this.instructorName = '김수경',
    this.subTitle = '[코어+근력 강화]',
    this.title = "'12회' 수업으로 복근 만들기",
    this.rate_avg = 3.5,
    this.people_cnt = 190,
    this.card_width,
    this.discount_price,
    this.original_price,
  }) : super(key: key);

  final String instructorName;
  final String subTitle;
  final title;
  final double rate_avg;
  final int people_cnt;
  final double card_width;
  final int discount_price;
  final int original_price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionalWidth(150),
      padding: EdgeInsets.all(getProportionalWidth(10)),
      margin: EdgeInsets.only(right: getProportionalWidth(15)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0.5, 0.5), // changes position of shadow
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
                width: getProportionalWidth(130),
                height: getProportionateHeight(90),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/themeyoga.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.center),
                ),
              ),
              SizedBox(
                height: getProportionateHeight(5),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionalWidth(12),
                        color: Colors.black),
                    children: [
                      TextSpan(text: '$subTitle '),
                      TextSpan(text: '$title')
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '$discount_price',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: getProportionalWidth(12),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: getProportionalWidth(5),
                  ),
                  Text('%original_price',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(decoration: TextDecoration.lineThrough)),
                ],
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
                radius: getProportionalWidth(10),
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
                      style: TextStyle(
                          fontSize: getProportionalWidth(10),
                          color: Colors.black),
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
                        itemSize: getProportionalWidth(8),
                        direction: Axis.horizontal,
                      ),
                      SizedBox(
                        width: getProportionalWidth(3),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: getProportionalWidth(7),
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
