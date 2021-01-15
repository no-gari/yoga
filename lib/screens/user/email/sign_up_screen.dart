import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/rounded_input_field_component.dart';
import 'package:yogaon/components/inputs/rounded_password_field_component.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/screens/user/login_screen.dart';

import '../../../constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                '회원가입',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('이메일')),
              RoundedInputfieldComponent(
                icon: Icons.email,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Text('비밀번호 설정')),
              RoundedPasswordFieldComponent(),
              RoundedPasswordFieldComponent(
                helpText: '비밀번호 확인',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: YogaonButtonComponent(
                    buttonText: '가입완료',
                    buttonWidth: size.width * 0.8,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '가입완료를 누름으로써 yogaon의 이용약관 및 개인정보 처리방침에 동의합니다.',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
