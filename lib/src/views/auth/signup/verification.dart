import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:redid/src/styles/colors.dart';
import 'package:redid/src/views/auth/signup/setpassword.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);
  static String tag = 'Verification';

  @override
  VerificationState createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  late List<TextStyle?> otpTextStyles;
  @override
  Widget build(BuildContext context) {
    otpTextStyles = [
      createStyle(accentPurpleColor),
      createStyle(accentYellowColor),
      createStyle(accentDarkGreenColor),
      createStyle(accentOrangeColor),
      createStyle(accentPinkColor),
      createStyle(accentPurpleColor),
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 60,
                child: Image.asset('assets/icons/otp.svg'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: const Text(
                "Account Verification",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Book-Antiqua',
                  color: kTextColor,
                  letterSpacing: 0.5,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: const Divider(
                color: kPrimaryColor,
                height: 0.0,
                thickness: 1.0,
                indent: 0.0,
                endIndent: 0.0,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 25.0, right: 20.0),
              child: const Text(
                "Please enter the OTP sent on your registered phone number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Book-Antiqua',
                  color: kTextColor,
                  fontSize: 16,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: kBaseColor,
              focusedBorderColor: kBaseColor,
              fieldWidth: 50,
              styles: otpTextStyles,
              /* textStyle: const TextStyle(
                  fontFamily: 'Book-Antiqua', fontSize: 20, color: kTextColor), 
                  */
              showFieldAsBox: false,
              borderWidth: 4.0,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: ArgonTimerButton(
                initialTimer: 10,
                height: 25,
                width: 100,
                minWidth: 100,
                color: kBackgroundColor,
                borderRadius: 30,
                colorBrightness: Brightness.light,
                curve: Curves.ease,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                clipBehavior: Clip.antiAlias,
                reverseCurve: Curves.ease,
                focusNode: FocusNode(),
                child: const Text(
                  "Resend OTP",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Book-Antiqua',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                loader: (timeLeft) {
                  return Text(
                    "Valid till $timeLeft seconds",
                    style: const TextStyle(
                      color: kTextColor,
                      fontSize: 15,
                      fontFamily: 'Book-Antiqua',
                      fontWeight: FontWeight.w700,
                    ),
                  );
                },
                onTap: (startTimer, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startTimer(10);
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: MaterialButton(
                elevation: 5.0,
                colorBrightness: Brightness.light,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(SetPassword.tag);
                },
                padding: const EdgeInsets.fromLTRB(50, 6, 50, 6),
                color: kBaseColor,
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontFamily: "Book-Antiqua",
                    letterSpacing: 0.5,
                    fontSize: 22,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  TextStyle? createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.headline3?.copyWith(color: color);
  }
}

mixin BorderRaius {
  static all(Radius radius) {}
}
