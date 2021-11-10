import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redid/src/app/appview.dart';
import 'package:redid/src/views/auth/signin/signin.dart';
import 'package:redid/src/views/auth/signup/setpassword.dart';
import 'package:redid/src/views/auth/signup/signup.dart';
import 'package:redid/src/views/auth/signup/verification.dart';
import 'package:redid/src/views/dashboard/about/about.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';
import 'package:redid/src/views/dashboard/ecommerce/ecommerce.dart';
import 'package:redid/src/views/dashboard/help/helpsupport.dart';
import 'package:redid/src/views/dashboard/jobhistory/jobhistory.dart';
import 'package:redid/src/views/dashboard/jobhistory/workhistory.dart';
import 'package:redid/src/views/dashboard/notice/notices.dart';
import 'package:redid/src/views/dashboard/onlinejobs/onlinejobs.dart';
import 'package:redid/src/views/dashboard/profile/userprofile.dart';
import 'package:redid/src/views/dashboard/settings/appsettings.dart';
import 'package:redid/src/views/dashboard/wallet/userwallet.dart';
import 'package:redid/src/views/drawer/customdrawer.dart';
import 'package:redid/src/views/notifications/notificationscreen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  //SplashScreen.tag: (context) => const SplashScreen(),
  AppView.tag: (context) => const AppView(),
  SignIn.tag: (context) => const SignIn(),
  SignUp.tag: (context) => const SignUp(),
  Verification.tag: (context) => const Verification(),
  SetPassword.tag: (context) => const SetPassword(),
  Dashboard.tag: (context) => const Dashboard(),
  NotificationScreen.tag: (context) => const NotificationScreen(),
  AppSettings.tag: (context) => const AppSettings(),
  CustomDrawer.tag: (context) => const CustomDrawer(),
  UserProfile.tag: (context) => const UserProfile(),
  UserWallet.tag: (context) => const UserWallet(),
  JobHistory.tag: (context) => const JobHistory(),
  WorkHistory.tag: (context) => const WorkHistory(),
  ECommerce.tag: (context) => const ECommerce(),
  OnlineJobs.tag: (context) => const OnlineJobs(),
  Notices.tag: (context) => const Notices(),
  HelpSupport.tag: (context) => const HelpSupport(),
  About.tag: (context) => const About(),
};
