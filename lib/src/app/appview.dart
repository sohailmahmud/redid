// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/styles/customwidget.dart';
import 'package:redid/src/views/auth/signin/signin.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key, this.title}) : super(key: key);
  final String? title;

  static String tag = 'AppView';

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    final homeScreenLogo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 140,
                child: Image.asset('assets/icons/hlogo.png', fit: BoxFit.cover),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Welcome to ",
                    style: TextStyle(
                      fontFamily: 'Chiller',
                      fontSize: 35,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "redID",
                    style: TextStyle(
                      fontFamily: 'Chiller',
                      fontSize: 35,
                      color: kBaseColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "!",
                    style: TextStyle(
                      fontFamily: 'Chiller',
                      fontSize: 35,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
    final continueButton = SizedBox(
      child: customMaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SignIn.tag);
        },
        color: kBaseColor,
        padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
        child: const Text(
          'Continue',
          style: kButtonStyle,
        ),
      ),
    );
    final copyrightText = SizedBox(
      child: Text(
        '© 2021 redID. All rights reserved.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Book-Antiqua',
          fontSize: 12.0,
          letterSpacing: 0.5,
          color: kTextColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            homeScreenLogo,
            const SizedBox(height: 50),
            continueButton,
            const SizedBox(height: 50),
            copyrightText,
          ],
        ),
      ),
    );
  }
}
