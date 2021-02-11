import 'package:flutter/material.dart';
import 'package:yogaon/screens/chats/chat_screen.dart';
import 'package:yogaon/screens/home/home_screen.dart';
import 'package:yogaon/screens/introduction/start_screen.dart';
import 'package:yogaon/screens/my_classes/myclass_screen.dart';
import 'package:yogaon/screens/notification_detail/notification_detail.dart';
import 'package:yogaon/screens/notifications/notifications.dart';
import 'package:yogaon/screens/options/age_choice_screen.dart';
import 'package:yogaon/screens/options/bodypart_choice_screen.dart';
import 'package:yogaon/screens/options/frequency_choice_screen.dart';
import 'package:yogaon/screens/options/reason_choice_screen.dart';
import 'package:yogaon/screens/options/yoga_level_choice_screen.dart';
import 'package:yogaon/screens/preference_detail/faq/faq.dart';
import 'package:yogaon/screens/preference_detail/help_center/help_center.dart';
import 'package:yogaon/screens/preference_detail/notifications/notifications_settings.dart';
import 'package:yogaon/screens/preference_detail/password_change/password_change.dart';
import 'package:yogaon/screens/preference_detail/private_infos/private_infos.dart';
import 'package:yogaon/screens/preference_detail/profile/profile_settings.dart';
import 'package:yogaon/screens/profile/profile_screen.dart';
import 'package:yogaon/screens/user/login_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  MyclassScreen.routeName: (context) => MyclassScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  NotificationDetailScreen.routeName: (context) => NotificationDetailScreen(),
  ProfileSettings.routeName: (context) => ProfileSettings(),
  FAQ.routeName: (context) => FAQ(),
  HelpCenter.routeName: (context) => HelpCenter(),
  NotificationSettings.routeName: (context) => NotificationSettings(),
  PasswordChange.routeName: (context) => PasswordChange(),
  PrivateInfo.routeName: (context) => PrivateInfo(),
  StartScreen.routeName: (context) => StartScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  AgeChoiceScreen.routeName: (context) => AgeChoiceScreen(),
  BodypartChoiceScreen.routeName: (context) => BodypartChoiceScreen(),
  FrequencyChoiceScreen.routeName: (context) => FrequencyChoiceScreen(),
  ReasonChoiceScreen.routeName: (context) => ReasonChoiceScreen(),
  YogaLevelChoiceScreen.routeName: (context) => YogaLevelChoiceScreen(),
};
