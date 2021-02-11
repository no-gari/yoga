import 'package:flutter/material.dart';
import 'package:yogaon/screens/chats/components/chat_list.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String chatRoomImg;
  String chatRoomName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChatList(),
          ],
        ),
      ),
    );
  }
}
