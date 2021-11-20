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
    final forgotPasswordLabel = Container(
      padding: const EdgeInsets.only(top: 30, bottom: 25),
      child: InkWell(
        highlightColor: kBackgroundColor,
        hoverColor: kBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5.0),
              child: const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.transparent,
                child: FaIcon(
                  FontAwesomeIcons.userLock,
                  color: kBodyTextColor,
                  size: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontFamily: 'Book-Antiqua',
                  letterSpacing: 0.2,
                  fontSize: 16,
                  color: kBodyTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          //Navigator.of(context).pushNamed();
        },
      ),
    );
    final orLabel = Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: const <Widget>[
          Expanded(
            child: Divider(
              thickness: 2,
              indent: 30,
            ),
          ),
          Text(
            " or ",
            style: TextStyle(
              fontFamily: 'Book-Antiqua',
              fontSize: 22,
              color: kBaseColor,
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 2,
              endIndent: 30,
            ),
          ),
        ],
      ),
    );
    final createAccountButton = Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.only(top: 10),
      child: customMaterialButton(
        onPressed: () {
          Navigator.of(context).pop();
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
                  orLabel,
                  createAccountButton,
                ],
              ),
            ),
          ),
        ));
  }
}
