import 'dart:async';
import 'package:flutter/material.dart';
import 'package:redid/src/app/appview.dart';
import 'package:redid/src/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String tag = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const AppView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 80, bottom: 140),
          child: const Hero(
            tag: 'logo',
            child: Text(
              'redID',
              style: TextStyle(
                fontFamily: 'Chiller',
                fontSize: 120,
                color: kBaseColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
