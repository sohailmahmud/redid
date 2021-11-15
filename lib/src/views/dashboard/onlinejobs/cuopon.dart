import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';

class Coupon extends StatefulWidget {
  final String? title, descriptions, text;
  final Image? img;

  const Coupon({Key? key, this.title, this.descriptions, this.text, this.img})
      : super(key: key);
  static String tag = 'Coupon';

  @override
  CouponState createState() => CouponState();
}

class CouponState extends State<Coupon> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[kBaseColor, kButtonColor],
  ).createShader(
    const Rect.fromLTWH(170.0, 10.0, 50.0, 15.0),
  );

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      insetAnimationCurve: Curves.decelerate,
      insetAnimationDuration: const Duration(milliseconds: 100),
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.none,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 15),
          margin: const EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 2),
                child: const Text(
                  'Do you have a redID coupon?',
                  style: TextStyle(
                    fontSize: 14,
                    color: kBaseColor,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Text(
                'Enter it and get the benifits!',
                style: TextStyle(
                  fontSize: 12,
                  color: kTextLightColor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  keyboardType: TextInputType.visiblePassword,
                  initialValue: '',
                  style: const TextStyle(
                    fontFamily: "Book-Antiqua",
                    fontSize: 14,
                    color: kTextColor,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your coupon/gift code',
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, right: 2, bottom: 5),
                      child: const FaIcon(
                        FontAwesomeIcons.tags,
                        size: 18,
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Note: If you don\'t have any coupons then skip, please.',
                style: TextStyle(
                  fontSize: 10,
                  color: kTextLightColor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 2, left: 2),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: kBackgroundColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(
                                color: kBaseColor,
                              )),
                        ),
                        child: const Text(
                          'Available Coupon',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 12,
                            color: kBaseColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: ElevatedButton(
                        onPressed: () => Dialogs.materialDialog(
                          barrierDismissible: false,
                          barrierColor: Colors.black,
                          color: Colors.white,
                          msg: 'You got 15% discount on your membership.',
                          title: 'Congratulations',
                          lottieBuilder: Lottie.asset(
                            'assets/congratulations.json',
                            fit: BoxFit.contain,
                          ),
                          context: context,
                          actions: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: IconsButton(
                                onPressed: () => Dialogs.materialDialog(
                                  barrierDismissible: false,
                                  barrierColor: Colors.black,
                                  color: Colors.white,
                                  useSafeArea: true,
                                  title: null,
                                  msg:
                                      'Note: This message will be directly sent to the admin for review. So be careful about the legal information.',
                                  msgStyle: const TextStyle(
                                    fontFamily: 'Book-Antiqua',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.4,
                                  ),
                                  customView: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.zero,
                                          child: Text(
                                            'redID',
                                            style: TextStyle(
                                              fontFamily: 'Chiller',
                                              fontSize: 45,
                                              letterSpacing: 0.8,
                                              //color: kBaseColor,
                                              fontWeight: FontWeight.w900,
                                              foreground: Paint()
                                                ..shader = linearGradient,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 10),
                                          alignment: Alignment.centerLeft,
                                          child: const Text(
                                            'Request for Account Approval',
                                            style: TextStyle(
                                              fontFamily: 'Book-Antiqua',
                                              fontSize: 15,
                                              color: kBaseColor,
                                              fontWeight: FontWeight.w900,
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: TextFormField(
                                            maxLines: 5,
                                            minLines: 5,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  20)
                                            ],
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            initialValue: '',
                                            style: const TextStyle(
                                              fontFamily: "Book-Antiqua",
                                              fontSize: 14,
                                              color: kTextColor,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: 'Write your message',
                                              contentPadding:
                                                  const EdgeInsets.fromLTRB(
                                                      10.0, 15.0, 10.0, 15.0),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  context: context,
                                  actions: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50),
                                      child: IconsButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(Dashboard.tag);
                                        },
                                        text: 'Send Request',
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        color: kBaseColor,
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica'),
                                        iconColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                text: 'Claim',
                                iconData: Icons.done,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: kBaseColor,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Helvetica'),
                                iconColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: kBaseColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Add Coupon',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 12,
                            color: kBackgroundColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      child: ElevatedButton(
                        onPressed: () => Dialogs.materialDialog(
                          barrierDismissible: false,
                          barrierColor: Colors.black,
                          color: Colors.white,
                          useSafeArea: true,
                          title: null,
                          msg:
                              'N.B.: This message will be directly sent to the admin for review. So be careful about the legal information.',
                          msgStyle: const TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0.4,
                          ),
                          customView: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 40),
                                  child: Text(
                                    'redID',
                                    style: TextStyle(
                                      fontFamily: 'Chiller',
                                      fontSize: 45,
                                      letterSpacing: 0.8,
                                      //color: kBaseColor,
                                      fontWeight: FontWeight.w900,
                                      foreground: Paint()
                                        ..shader = linearGradient,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    'Request for Account Approval',
                                    style: TextStyle(
                                      fontFamily: 'Book-Antiqua',
                                      fontSize: 15,
                                      color: kBaseColor,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: TextFormField(
                                    maxLines: 5,
                                    minLines: 5,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    keyboardType: TextInputType.visiblePassword,
                                    initialValue: '',
                                    style: const TextStyle(
                                      fontFamily: "Book-Antiqua",
                                      fontSize: 14,
                                      color: kTextColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Write your message',
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10.0, 15.0, 10.0, 15.0),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          context: context,
                          actions: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: IconsButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Dashboard.tag);
                                },
                                text: 'Send Request',
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: kBaseColor,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Helvetica'),
                                iconColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: kBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: const BorderSide(
                              color: kBaseColor,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 12,
                            color: kInfectedColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.pink.shade800,
            radius: 35,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(35),
              ),
              child: Image.asset(
                'assets/icons/coupon.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
