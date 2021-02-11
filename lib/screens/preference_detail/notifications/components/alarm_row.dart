import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:yogaon/constants.dart';
import 'package:yogaon/size_config.dart';

bool isSwitched = true;

class AlarmRow extends StatefulWidget {
  @override
  _AlarmRowState createState() => _AlarmRowState();
}

class _AlarmRowState extends State<AlarmRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowComponent(icon: Icon(Icons.alarm_outlined), text: '푸시 알림 설정'),
        RowComponent(
          icon: Icon(Icons.email_outlined),
          text: '이메일, 문자 알림',
        ),
      ],
    );
  }
}

class RowComponent extends StatelessWidget {
  RowComponent({Key key, this.icon, this.text}) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateHeight(50),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon,
              SizedBox(width: getProportionalWidth(20)),
              Text(
                '$text',
                style: TextStyle(
                    fontSize: getProportionateHeight(17), color: Colors.black),
              ),
            ],
          ),
          FlutterSwitch(
            value: isSwitched,
            activeColor: kBackgroundColorMain,
            width: getProportionalWidth(50),
            height: getProportionateHeight(30),
            onToggle: (bool value) {},
          ),
        ],
      ),
    );
  }
}
