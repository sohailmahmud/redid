import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redid/src/app/appview.dart';
import 'package:redid/src/views/auth/signin/signin.dart';
import 'package:redid/src/views/auth/signup/setpassword.dart';
import 'package:redid/src/views/auth/signup/signup.dart';
import 'package:redid/src/views/auth/signup/verification.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';
import 'package:redid/src/views/drawer/customdrawer.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  AppView.tag: (context) => const AppView(),
  SignIn.tag: (context) => const SignIn(),
  SignUp.tag: (context) => const SignUp(),
  Verification.tag: (context) => const Verification(),
  SetPassword.tag: (context) => const SetPassword(),
  Dashboard.tag: (context) => const Dashboard(),
  CustomDrawer.tag: (context) => const CustomDrawer(),
};
