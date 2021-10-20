import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redid/src/styles/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, this.title}) : super(key: key);
  final String? title;
  static String tag = 'SignUp';
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  bool showvalue = false;
  @override
  Widget build(BuildContext context) {
    final signUpLogo = Container(
      padding: const EdgeInsets.only(top: 80, bottom: 50),
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

    final fieldTitle = Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: const Text(
        'Enter Your Phone Number',
        style: TextStyle(
          fontFamily: 'Book-Antiqua',
          color: Colors.black,
          letterSpacing: 0.5,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
    final agreementCheck = Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.zero,
            child: Transform.scale(
              scale: 1.4,
              child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                checkColor: kBackgroundColor,
                activeColor: kBaseColor,
                value: showvalue,
                onChanged: (value) {
                  setState(() {
                    showvalue = value!;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  child: Text(
                    'I have read and agree to the',
                    style: TextStyle(
                      fontFamily: 'Book-Antiqua',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    //textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  //textAlign: TextAlign.left,
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Terms of Use ",
                        style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 17,
                          color: kBaseColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 17,
                          color: kBaseColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final getOTPButton = Padding(
      padding:
          const EdgeInsets.only(top: 0.0, left: 30, bottom: 0.0, right: 30),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('');
        },
        padding: const EdgeInsets.only(top: 6.0, bottom: 8.0),
        color: kButtonColor,
        child: const Text(
          'GET OTP',
          style: TextStyle(
            fontFamily: "Book-Antiqua",
            letterSpacing: 0.5,
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
    final signInButton = Padding(
      padding:
          const EdgeInsets.only(left: 25, top: 40.0, right: 25, bottom: 40),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('');
        },
        padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
        color: kButtonColor,
        child: const Text(
          'Sign in with password',
          style: TextStyle(
            fontFamily: "Book-Antiqua",
            letterSpacing: 0.5,
            fontSize: 25,
            color: kWhiteShadow,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(15),
          children: <Widget>[
            signUpLogo,
            fieldTitle,
            agreementCheck,
            getOTPButton,
            signInButton,
          ],
        ),
      ),
    );
  }
}

String numberValidator(String value) {
  if (value == '') {
    return '';
  }
  final n = num.tryParse(value);
  if (n == null) {
    return '"$value" is not a valid number!';
  }
  return '';
}
