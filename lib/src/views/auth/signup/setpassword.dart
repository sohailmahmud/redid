import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/styles/customvalidator.dart';
import 'package:redid/src/styles/customwidget.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key, this.title}) : super(key: key);
  final String? title;
  static String tag = 'SetPassword';
  @override
  SetPasswordState createState() => SetPasswordState();
}

class SetPasswordState extends State<SetPassword> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();

  late String password;
  late String retypePassword;
  late bool _passwordVisible;
  late bool _retypePasswordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _retypePasswordVisible = false;
  }

  String? retypePasswordValidator(String? retypePassword) {
    if (retypePassword!.isEmpty) {
      return 'Please enter confirm password';
    } else if (retypePassword != password) {
      return 'Password does not match';
    }
    return null;
  }

  void newSignInValidate() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      // ignore: avoid_print
      print('Validated.');
      Navigator.of(context).pop();
      Navigator.of(context).pushNamed(Dashboard.tag);
    } else {
      // ignore: avoid_print
      print('Not Validated.');
    }
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

    final accountPasswordTitle = Container(
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

    final accountPassInstructions = Container(
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
      padding: const EdgeInsets.only(top: 20, left: 25, bottom: 10, right: 25),
      child: customFormField(
        decoration: customInputDecoration(
          hintText: 'Password',
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
        validator: passwordValidator,
        inputFormatters: [LengthLimitingTextInputFormatter(40)],
        keyboardType: TextInputType.text,
        onChanged: (val) => password = val,
        obscureText: !_passwordVisible,
        autofocus: false,
        controller: passwordController,
      ),
    );

    final reTypePassword = Container(
      padding: const EdgeInsets.only(top: 10, left: 25, bottom: 25, right: 25),
      child: customFormField(
        decoration: customInputDecoration(
          hintText: 'Re-Type Password',
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
              _retypePasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _retypePasswordVisible = !_retypePasswordVisible;
              });
            },
          ),
        ),
        validator: retypePasswordValidator,
        inputFormatters: [LengthLimitingTextInputFormatter(40)],
        keyboardType: TextInputType.text,
        onChanged: (val) => retypePassword = val,
        obscureText: !_retypePasswordVisible,
        autofocus: false,
        controller: retypePasswordController,
      ),
    );

    final signInButton = Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.only(top: 10),
      child: customMaterialButton(
        onPressed: () {
          newSignInValidate();
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        clipBehavior: Clip.hardEdge,
        child: Container(
          padding: EdgeInsets.zero,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                newAccountPasswordLogo,
                accountPasswordTitle,
                verticalDivider,
                accountPassInstructions,
                newPassword,
                reTypePassword,
                signInButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
