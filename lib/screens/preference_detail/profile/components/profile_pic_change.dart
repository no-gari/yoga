import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class ProfilePicChange extends StatefulWidget {
  @override
  _ProfilePicChangeState createState() => _ProfilePicChangeState();
}

class _ProfilePicChangeState extends State<ProfilePicChange> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: getProportionateHeight(30)),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                  radius: getProportionateHeight(40),
                  backgroundImage: AssetImage('assets/images/instructor.jpg')),
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          child: CircleAvatar(
                        radius: getProportionalWidth(12),
                        backgroundColor: Colors.grey[300],
                        child: Image.asset('assets/images/camera.png'),
                      ))))
            ],
          ),
          SizedBox(height: getProportionateHeight(15)),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20),
                  Text('김요가 님',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.bold)),
                  Image.asset('assets/images/edit.png',
                      width: getProportionalWidth(20))
                ]),
          ),
          Divider(color: Colors.grey[400])
        ],
      ),
    );
  }
}
