import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/rounded_input_field_component.dart';
import 'package:yogaon/components/inputs/rounded_password_field_component.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/user/email/sign_up_screen.dart';

import '../../../constants.dart';

class EmailVerificationScreen extends StatefulWidget {
  @override
  _EmailVerificationScreenState createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: kPrimaryColor,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:
            Container(width: 130, child: Image.asset('assets/images/logo.png')),
        actions: [Icon(Icons.notifications_outlined)],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                '본인인증',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 40, top: 30),
                  child: Text('이메일')),
              RoundedInputfieldComponent(
                icon: Icons.email,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: YogaonButtonComponent(
                  buttonColor: Colors.grey[400],
                  buttonText: '인증번호 전송',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 40, top: 30),
                  child: Text('인증번호 확인')),
              RoundedInputfieldComponent(
                icon: Icons.confirmation_number,
                hintText: '인증번호 입력',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: YogaonButtonComponent(
                    buttonText: '인증하기',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
