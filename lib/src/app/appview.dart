import 'package:flutter/material.dart';
import 'package:redid/src/styles/colors.dart';
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
    final homeScreenLogo = Container(
      padding: const EdgeInsets.only(top: 80, bottom: 140),
      child: const Hero(
        tag: 'hero',
        child: Text(
          'redID',
          style: TextStyle(
            fontFamily: 'Chiller',
            fontSize: 70,
            color: kBaseColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final welcomeMessage = Container(
      padding: const EdgeInsets.only(bottom: 130),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "Welcome to ",
              style: TextStyle(
                fontFamily: 'Book-Antiqua',
                fontSize: 30,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "redID",
              style: TextStyle(
                fontFamily: 'Book-Antiqua',
                fontSize: 30,
                color: kBaseColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "!",
              style: TextStyle(
                fontFamily: 'Book-Antiqua',
                fontSize: 30,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
    final continueButton = Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(SignIn.tag);
        },
        padding: const EdgeInsets.fromLTRB(100, 10, 100, 13),
        color: kBaseColor,
        child: const Text(
          'Continue',
          style: TextStyle(
            fontFamily: "Book-Antiqua",
            letterSpacing: 0.5,
            fontSize: 28,
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final copyrightText = Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: const Text(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            homeScreenLogo,
            welcomeMessage,
            continueButton,
            copyrightText,
          ],
        ),
      ),
    );
  }
}
