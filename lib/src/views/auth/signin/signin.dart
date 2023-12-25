import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/styles/customvalidator.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late String password;
  late bool _passwordVisible;
  bool? showvalue = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  void signInValidate() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
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
    final signinLogo = Container(
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

    final phoneNumberField = Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: customFormField(
        decoration: customInputDecoration(
          hintText: 'Phone Number',
          prefixIcon: Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 12, 7),
            child: const FaIcon(
              FontAwesomeIcons.mobileAlt,
              size: 26,
            ),
          ),
        ),
        validator: phoneNumberValidator,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11)
        ],
        keyboardType: TextInputType.number,
        obscureText: false,
        autofocus: false,
        controller: phoneNumberController,
      ),
    );
    final passwordField = Container(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
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
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
        validator: passwordValidator,
        inputFormatters: [LengthLimitingTextInputFormatter(40)],
        keyboardType: TextInputType.visiblePassword,
        onChanged: (val) => password = val,
        obscureText: !_passwordVisible,
        autofocus: false,
        controller: passwordController,
      ),
    );
    final signInButton = Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.only(top: 10),
      child: customMaterialButton(
        onPressed: () {
          signInValidate();
        },
        color: kBaseColor,
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: const Text(
          'Sign in',
          style: kButtonStyle,
        ),
      ),
    );
    final forgotPasswordLabel = Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                showvalue = !showvalue!;
              });
            },
            child: Row(
              children: [
                Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  checkColor: Colors.white,
                  activeColor: Colors.amber.shade900,
                  value: showvalue,
                  onChanged: (bool? value) {
                    setState(() {
                      showvalue = value;
                    });
                  },
                ),
                const Text(
                  'Remember Me',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      color: Colors.black45,
                      letterSpacing: 0.5,
                      fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.lock, color: Colors.black45),
                ),
              ),
              InkWell(
                //highlightColor: kBackgroundColor,
                //hoverColor: kBackgroundColor,
                //splashColor: kBackgroundColor,
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      color: Colors.black45,
                      letterSpacing: 0.5,
                      fontSize: 15),
                  textAlign: TextAlign.right,
                ),
                onTap: () {
                  //Navigator.of(context).pushNamed(ForgotPassword.tag);
                },
              ),
            ],
          ),
        ],
      ),
    );

    final createAccountButton = Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
      child: SizedBox(
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: 'Don\'t have an account? ',
            style: const TextStyle(
                fontFamily: 'Segoe',
                color: Colors.black45,
                letterSpacing: 0.5,
                fontSize: 15),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign Up',
                style: const TextStyle(
                  color: kBaseColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SignUp();
                    }));
                  },
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.hardEdge,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  signinLogo,
                  phoneNumberField,
                  passwordField,
                  signInButton,
                  forgotPasswordLabel,
                  createAccountButton,
                ],
              ),
            ),
          ),
        ));
  }
}
