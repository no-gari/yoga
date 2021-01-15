import 'package:flutter/material.dart';
import 'package:yogaon/components/inputs/rounded_input_field_component.dart';
import 'package:yogaon/components/inputs/rounded_password_field_component.dart';
import 'package:yogaon/components/inputs/yogaon_button_component.dart';
import 'package:yogaon/constants.dart';

class EmailLoginScreen extends StatefulWidget {
  @override
  _EmailLoginScreenState createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
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
          padding: const EdgeInsets.only(top: 80),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                '이메일 로그인',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 40,
              ),
              RoundedInputfieldComponent(
                icon: Icons.email,
              ),
              RoundedPasswordFieldComponent(),
              SizedBox(
                height: 20,
              ),
              YogaonButtonComponent(
                buttonText: '로그인',
                buttonWidth: size.width * 0.8,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '비밀번호를 잊으셨나요?',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Text(
                        '비밀번호 찾기 >',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: kPrimaryColor),
                      ),
                    ),
                  ],
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
