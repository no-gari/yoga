import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/password_change/components/password_change_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [PasswordChangeForm()],
      ),
    );
  }
}
