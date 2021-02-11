import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateHeight(5),
          horizontal: getProportionalWidth(15)),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300])),
      ),
      height: getProportionateHeight(80),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: getProportionalWidth(30),
            backgroundColor: Colors.teal,
          ),
          Container(
            width: getProportionalWidth(210),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '대충 수업 이름 들어가는 곳',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text('가장 최근 메세지가 뜨는 곳'),
              ],
            ),
          ),
          Container(
            width: getProportionalWidth(60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('1월 17일'),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                  // width: getProportionalWidth(20),
                  // height: getProportionateHeight(20),
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
