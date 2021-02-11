import 'package:flutter/material.dart';
import 'package:yogaon/screens/notification_detail/components/body.dart';

class NotificationDetailScreen extends StatelessWidget {
  static String routeName = '/notification_detail';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Body(),
    );
  }
}
