import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:redid/src/styles/colors.dart';
import 'package:redid/src/views/auth/signin/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, this.title}) : super(key: key);
  final String? title;
  static String tag = 'SignUp';
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'BD';
  PhoneNumber number = PhoneNumber(isoCode: 'BD');

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
      padding: const EdgeInsets.only(bottom: 30),
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
    final phoneNumber = Container(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
      child: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  // ignore: avoid_print
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  // ignore: avoid_print
                  print(value);
                },
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                textStyle: const TextStyle(
                  fontFamily: "Book-Antiqua",
                  fontSize: 18,
                  color: Colors.black,
                ),
                selectorTextStyle: const TextStyle(
                  fontFamily: "Book-Antiqua",
                  fontSize: 18,
                  color: Colors.black,
                ),
                inputDecoration: InputDecoration(
                  hintText: 'Phone Number',
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                searchBoxDecoration: InputDecoration(
                  hintText: 'Search by country or phone number',
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                spaceBetweenSelectorAndTextField: 0,
                ignoreBlank: false,
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onSaved: (PhoneNumber number) {
                  // ignore: avoid_print
                  print('On Saved: $number');
                },
              ),
            ],
          ),
        ),
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
                          color: kInfectedColor,
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
                          color: kInfectedColor,
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
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('');
        },
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 12),
        color: kBaseColor,
        child: const Text(
          'GET OTP',
          style: TextStyle(
            fontFamily: "Book-Antiqua",
            letterSpacing: 0.5,
            fontSize: 22,
            color: kTextColor,
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
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(SignIn.tag);
        },
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 12),
        color: kBaseColor,
        child: const Text(
          'Sign in with password',
          style: TextStyle(
            fontFamily: "Book-Antiqua",
            letterSpacing: 0.5,
            fontSize: 25,
            color: kTextColor,
            fontWeight: FontWeight.bold,
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
            phoneNumber,
            agreementCheck,
            getOTPButton,
            signInButton,
          ],
        ),
      ),
    );
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

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
