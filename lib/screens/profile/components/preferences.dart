import 'package:flutter/material.dart';
import 'package:yogaon/screens/preference_detail/faq/faq.dart';
import 'package:yogaon/screens/preference_detail/help_center/help_center.dart';
import 'package:yogaon/screens/preference_detail/notifications/notifications_settings.dart';
import 'package:yogaon/screens/preference_detail/password_change/password_change.dart';
import 'package:yogaon/screens/preference_detail/private_infos/private_infos.dart';
import 'package:yogaon/screens/preference_detail/profile/profile_settings.dart';
import '../../../size_config.dart';

class Preferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: getProportionateHeight(15)),
          child: Text(
            '내설정',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PreferenceContainer(
              preferenceText: '프로필 수정',
              route: ProfileSettings.routeName,
            ),
            PreferenceContainer(
              preferenceText: '고객센터',
              route: HelpCenter.routeName,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PreferenceContainer(
              preferenceText: '알림설정',
              route: NotificationSettings.routeName,
            ),
            PreferenceContainer(
              preferenceText: '비밀번호 변경',
              route: PasswordChange.routeName,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PreferenceContainer(
              preferenceText: '자주 묻는 질문',
              route: FAQ.routeName,
            ),
            PreferenceContainer(
              preferenceText: '개인정보 처리방침',
              route: PrivateInfo.routeName,
            ),
          ],
        ),
      ],
    );
  }
}

class PreferenceContainer extends StatelessWidget {
  PreferenceContainer({Key key, this.preferenceText, this.route})
      : super(key: key);

  final String preferenceText;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: getProportionateHeight(5)),
        width: getProportionalWidth(145),
        height: getProportionateHeight(30),
        color: Colors.grey[100],
        child: Center(
          child: Text(
            '$preferenceText',
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
      ),
    );
  }
}
