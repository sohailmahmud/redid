import 'package:flutter/material.dart';
import 'package:redid/src/styles/colors.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor: lightMode
          ? const Color(0x00ffffff).withOpacity(1.0)
          : const Color(0x00042a49).withOpacity(1.0),
      body: Center(
        child: lightMode
            ? Container(
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
              )
            : Container(
                padding: const EdgeInsets.only(top: 80, bottom: 140),
                child: const Hero(
                  tag: 'logo',
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
              ),
      ),
    );
  }
}
