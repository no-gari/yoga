import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yogaon/components/inputs/login_button_component.dart';
import 'package:yogaon/constants.dart';
import 'package:yogaon/screens/user/email/email_login_screen.dart';
import 'package:yogaon/screens/user/email/signup_email_verifciation_screen.dart';
import 'package:yogaon/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: getProportionateHeight(50)),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/loginbackground.png'),
              fit: BoxFit.cover,
              alignment: Alignment.center),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  constraints:
                      BoxConstraints(maxWidth: getProportionalWidth(200)),
                  child: Image.asset('assets/images/logo.png')),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: getProportionateHeight(40),
                          left: getProportionalWidth(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline1,
                              children: [
                                TextSpan(text: '원하는 시간,\n'),
                                TextSpan(text: '편안한 장소,\n'),
                                TextSpan(text: '멤버들과 함께,\n'),
                              ],
                            ),
                          ),
                          Text(
                            '나를 가꾸는 시간',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: getProportionateHeight(60)),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: null,
                              child: LoginButtonComponent(
                                buttonText: '카카오톡으로 로그인',
                                buttonColor: Color(0xFFfef01b),
                                faIcon: FaIcon(FontAwesomeIcons.solidComment),
                              ),
                            ),
                            GestureDetector(
                              onTap: null,
                              child: LoginButtonComponent(
                                buttonText: '페이스북으로 로그인',
                                faIcon: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                ),
                                buttonColor: Color(0xFF3b5998),
                                buttonTextColor: Colors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: null,
                              child: LoginButtonComponent(
                                buttonText: 'Apple로 로그인',
                                faIcon: FaIcon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.white,
                                ),
                                buttonColor: Colors.black,
                                buttonTextColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return EmailLoginScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                '이메일 로그인',
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return EmailVerificationScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                '회원가입',
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
