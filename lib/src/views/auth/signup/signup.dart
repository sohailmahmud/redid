import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/styles/customvalidator.dart';
import 'package:redid/src/styles/customwidget.dart';
import 'package:redid/src/views/auth/signin/signin.dart';
import 'package:redid/src/views/auth/signup/verification.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, this.title}) : super(key: key);
  final String? title;
  static String tag = 'SignUp';
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  String initialCountry = 'BD';
  PhoneNumber number = PhoneNumber(isoCode: 'BD');

  bool showvalue = false;

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  void otpValidate() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      // ignore: avoid_print
      print('Validated.');
      Navigator.of(context).pop();
      Navigator.of(context).pushNamed(Verification.tag);
    } else {
      // ignore: avoid_print
      print('Not Validated.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final signUpLogo = Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: MediaQuery.of(context).size.height * 0.32,
      padding: const EdgeInsets.only(bottom: 2.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50,
        child: Image.asset(
          'assets/icons/hlogo.png',
          fit: BoxFit.cover,
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
      child: InternationalPhoneNumberInput(
        validator: phoneNumberValidator,
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
          contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        searchBoxDecoration: InputDecoration(
          hintText: 'Search by country or phone number',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        spaceBetweenSelectorAndTextField: 0,
        autoFocus: false,
        ignoreBlank: false,
        initialValue: number,
        textFieldController: phoneNumberController,
        formatInput: false,
        keyboardType: const TextInputType.numberWithOptions(
          signed: true,
          decimal: true,
        ),
        inputBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        onSaved: (PhoneNumber number) {
          // ignore: avoid_print
          print('On Saved: $number');
        },
      ),
    );
    final agreementCheck = Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.zero,
            child: Transform.scale(
              scale: 1.2,
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
                      fontSize: 17.5,
                      color: kTextColor,
                      fontWeight: FontWeight.w500,
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
                          fontSize: 15,
                          color: kDeathColor,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 15,
                          color: kTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 15,
                          color: kDeathColor,
                          fontWeight: FontWeight.w500,
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
    final getOTPButton = Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.only(top: 10),
      child: customMaterialButton(
        onPressed: () {
          otpValidate();
        },
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        color: kBaseColor,
        child: const Text(
          'GET OTP',
          style: kButtonStyle,
        ),
      ),
    );
    final signInButton = Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.only(top: 50),
      child: customMaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SignIn.tag);
        },
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        color: kBaseColor,
        child: const Text(
          'Sign in with password',
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
}
