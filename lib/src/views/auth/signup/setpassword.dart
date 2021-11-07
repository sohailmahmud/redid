// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key, this.title}) : super(key: key);
  final String? title;
  static String tag = 'SetPassword';
  @override
  SetPasswordState createState() => SetPasswordState();
}

class SetPasswordState extends State<SetPassword> {
  late String password;
  bool showvalue = false;
  late bool _passwordVisible;
  late bool _RetypePasswordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _RetypePasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    final newAccountPasswordLogo = Container(
      padding: const EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 60.0,
          child: Image.asset('assets/icons/accountpass.svg'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: const EdgeInsets.only(bottom: 5),
      child: const Text(
        'Account Password',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Book-Antiqua',
          color: kTextColor,
          letterSpacing: 0.5,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    final verticalDivider = Container(
      padding: EdgeInsets.zero,
      child: const Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );

    final forgotPassInstructions = Container(
      padding: const EdgeInsets.only(
          top: 20.0, left: 20.0, bottom: 60.0, right: 20.0),
      child: const Text(
        'Please enter new password and re-type password to sign in',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Book-Antiqua',
          color: kTextColor,
          fontSize: 16,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );

    final newPassword = Container(
      padding: const EdgeInsets.only(top: 20, left: 35, bottom: 10, right: 35),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(40)],
        keyboardType: TextInputType.visiblePassword,
        onChanged: (val) => password = val,
        obscureText: !_passwordVisible,
        initialValue: '',
        style: const TextStyle(
            fontFamily: "Book-Antiqua", fontSize: 17, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 12, 7),
            child: const FaIcon(
              FontAwesomeIcons.unlockAlt,
              size: 25,
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );

    final reTypePassword = Container(
      padding: const EdgeInsets.only(top: 10, left: 35, bottom: 25, right: 35),
      child: TextFormField(
        inputFormatters: [LengthLimitingTextInputFormatter(40)],
        keyboardType: TextInputType.visiblePassword,
        onChanged: (val) => password = val,
        obscureText: !_RetypePasswordVisible,
        initialValue: '',
        style: const TextStyle(
            fontFamily: "Book-Antiqua", fontSize: 17, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Re-Type Password',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 12, 7),
            child: const FaIcon(
              FontAwesomeIcons.redoAlt,
              size: 25,
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _RetypePasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _RetypePasswordVisible = !_RetypePasswordVisible;
              });
            },
          ),
        ),
      ),
    );

    final signInButton = Container(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Dashboard.tag);
        },
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        color: kBaseColor,
        child: const Text(
          'Sign in',
          style: kButtonStyle,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            newAccountPasswordLogo,
            forgotPasswordTitle,
            verticalDivider,
            forgotPassInstructions,
            newPassword,
            reTypePassword,
            signInButton,
          ],
        ),
      ),
    );
  }
}
