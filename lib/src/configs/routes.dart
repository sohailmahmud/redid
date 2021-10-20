import 'package:flutter/material.dart';
import 'package:redid/src/app/appview.dart';
import 'package:redid/src/views/auth/signin/signin.dart';
import 'package:redid/src/views/auth/signup/signup.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  AppView.tag: (context) => const AppView(),
  SignIn.tag: (context) => const SignIn(),
  SignUp.tag: (context) => const SignUp(),
};
