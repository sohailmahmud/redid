import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redid/src/styles/colors.dart';
import 'package:redid/src/views/auth/signup/signup.dart';

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
      child: TextFormField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11)
        ],
        keyboardType: TextInputType.number,
        autofocus: false,
        obscureText: false,
        initialValue: '',
        style: const TextStyle(
            fontFamily: "Book-Antiqua", fontSize: 18, color: Colors.black),
        autocorrect: true,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Container(
            height: 10,
            width: 10,
            padding: const EdgeInsets.symmetric(
              vertical: 11.0,
            ),
            child: const Image(
              image: AssetImage(
                'assets/icons/phoneno.png',
              ),
              fit: BoxFit.fitHeight,
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
            fontFamily: "Book-Antiqua", fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Container(
            height: 12,
            width: 12,
            padding: const EdgeInsets.symmetric(
              vertical: 11.0,
            ),
            child: const Image(
              image: AssetImage(
                'assets/icons/password.png',
              ),
              fit: BoxFit.fitHeight,
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
    final signInButton = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          //side: const BorderSide(color: Colors.black, width: 0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('');
        },
        padding: const EdgeInsets.only(top: 6.0, bottom: 8.0),
        color: kButtonColor,
        child: const Text(
          'Sign in',
          style: TextStyle(
            fontFamily: "Book-Antiqua",
            letterSpacing: 0.5,
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final forgotPasswordLabel = Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/icons/forgotpass.png'),
                ),
              ),
              InkWell(
                highlightColor: kBackgroundColor,
                hoverColor: kBackgroundColor,
                //splashColor: kBackgroundColor,
                child: const Text(
                  'Forgotten Password?',
                  style: TextStyle(
                    fontFamily: 'Book-Antiqua',
                    letterSpacing: 0.5,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.right,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('');
                },
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
      padding: const EdgeInsets.only(top: 5.0, bottom: 40),
      child: MaterialButton(
        elevation: 5.0,
        colorBrightness: Brightness.light,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(SignUp.tag);
        },
        padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
        color: kButtonColor,
        child: const Text(
          'Create new Account',
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
        child: Expanded(
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
      ),
    );
  }
}