import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateHeight(10),
          horizontal: getProportionalWidth(15)),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey[400],
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          CircleAvatar(
            radius: getProportionalWidth(30),
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
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: '박리디',
                          style: TextStyle(color: kBackgroundColorMain)),
                      TextSpan(text: ' 회원님')
                    ]),
              ),
              SizedBox(
                height: getProportionateHeight(8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getProportionalWidth(60),
                    height: getProportionateHeight(10),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateHeight(10)),
                        children: [
                          TextSpan(
                              text: '나이   ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '만 22세')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    )),
                    width: getProportionalWidth(80),
                    height: getProportionateHeight(10),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateHeight(10)),
                        children: [
                          TextSpan(
                              text: '신장   ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '200cm')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: getProportionalWidth(60),
                    height: getProportionateHeight(10),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateHeight(10)),
                        children: [
                          TextSpan(
                              text: '    체중   ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '83kg')
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
