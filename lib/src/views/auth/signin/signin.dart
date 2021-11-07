import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/styles/customwidget.dart';
import 'package:redid/src/views/auth/signup/signup.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key, this.title}) : super(key: key);
  final String? title;
  static String tag = 'SignIn';
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late String password;
  bool showvalue = false;
  late bool _passwordVisible;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    final signinLogo = Container(
      padding: const EdgeInsets.only(top: 80, bottom: 80),
      child: const Text(
        'redID',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Chiller',
          fontSize: 70,
          color: kBaseColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final phoneNo = Container(
      height: 70,
      padding: const EdgeInsets.only(bottom: 20),
      child: customFormField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11)
        ],
        keyboardType: TextInputType.number,
        autofocus: false,
        obscureText: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Phone Number',
          prefixIcon: Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 12, 7),
            child: const FaIcon(
              FontAwesomeIcons.mobileAlt,
              size: 26,
            ),
          ),
        ),
      ),
    );
    final passwordField = Container(
      height: 70,
      padding: const EdgeInsets.only(bottom: 20),
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
    final signInButton = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
    final forgotPasswordLabel = Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                width: 30,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.transparent,
                  child: FaIcon(
                    FontAwesomeIcons.userLock,
                    color: kTitleTextColor,
                    size: 18,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  highlightColor: kBackgroundColor,
                  hoverColor: kBackgroundColor,
                  //splashColor: kBackgroundColor,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'Book-Antiqua',
                      letterSpacing: 0.2,
                      fontSize: 16,
                      color: kTitleTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  onTap: () {
                    //Navigator.of(context).pushNamed('');
                  },
                ),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Text(
                  " or ",
                  style: TextStyle(
                    fontFamily: 'Book-Antiqua',
                    fontSize: 26,
                    color: kBaseColor,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final createAccountButton = Padding(
      padding: const EdgeInsets.only(left: 20, top: 5.0, right: 20, bottom: 40),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(SignUp.tag);
        },
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        color: kBaseColor,
        child: const Text(
          'Create new Account',
          style: kButtonStyle,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          children: <Widget>[
            signinLogo,
            phoneNo,
            passwordField,
            signInButton,
            forgotPasswordLabel,
            createAccountButton,
          ],
        ),
      ),
    );
  }
}
