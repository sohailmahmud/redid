import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';

class RateUs extends StatefulWidget {
  const RateUs({Key? key}) : super(key: key);
  static String tag = 'RateUs';

  @override
  RateUsState createState() => RateUsState();
}

class RateUsState extends State<RateUs> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController saySomthingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    saySomthingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kBaseColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.solidSmile,
                    color: kBaseColor,
                    size: 35,
                  ),
                )),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Thanks for your feedback!',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: kBackgroundColor,
                  ),
                ),
                Text(
                  'We will try to improve our app.',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: kBackgroundColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        toolbarHeight: 50,
        leadingWidth: 28,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: kBaseColor),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.solidTimesCircle),
            onPressed: () => Navigator.of(context).pop(),
            splashRadius: 18,
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.24,
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/icons/ratings.svg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Your opinion matters to us!',
                    style: TextStyle(
                      fontFamily: 'Helvetica-Bold',
                      fontSize: 20,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w900,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 45, top: 10, right: 45),
                  child: const Text(
                    'We work super hard to make redID better '
                    'for you, and would love to know: how would you rate our app?',
                    style: TextStyle(
                      fontFamily: 'Helvetica-Bold',
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                      color: kTextLightColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: kBaseColor,
                    ),
                    onRatingUpdate: (rating) {
                      // ignore: avoid_print
                      print(rating);
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 25, top: 10, right: 25, bottom: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Tell us more',
                      labelStyle: TextStyle(
                        fontFamily: 'Helvetica-Bold',
                        fontSize: 15,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                        color: kTextLightColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBaseLightColor,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBaseLightColor,
                          width: 1.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBaseColor,
                          width: 1.0,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBaseColor,
                          width: 1.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: saySomthingController,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(500),
                      FilteringTextInputFormatter.allow(
                        RegExp(r'([#@&.a-z A-Z á-ú Á-Ú 0-9 \.\,\s\()])'),
                      ),
                      FilteringTextInputFormatter.deny(
                        RegExp(r'[/\\!]'),
                      ),
                    ],
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Please write something';
                      }
                      if (text.length < 10) {
                        return 'Your comments is too short';
                      }
                      if (text.length < 20) {
                        return 'Please write more than 20 characters';
                      }
                      return null;
                    },
                    autofocus: false,
                    maxLength: 500,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.26,
                  padding: const EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      }
                    },
                    color: kBaseColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        fontSize: 15,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                        color: kBackgroundColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ),
                      );
                    },
                    child: const Text(
                      'No Thanks',
                      style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        fontSize: 15,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                        color: kInfectedColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Love, from the redID team.',
                    style: GoogleFonts.mulish(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff76797e),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
