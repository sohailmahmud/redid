import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/auth/signin/signin.dart';
import 'package:redid/src/views/dashboard/about/about.dart';
import 'package:redid/src/views/dashboard/dashboard.dart';
import 'package:redid/src/views/dashboard/ecommerce/ecommerce.dart';
import 'package:redid/src/views/dashboard/help/helpsupport.dart';
import 'package:redid/src/views/dashboard/jobhistory/jobhistory.dart';
import 'package:redid/src/views/dashboard/notice/notices.dart';
import 'package:redid/src/views/dashboard/onlinejobs/onlinejobs.dart';
import 'package:redid/src/views/dashboard/profile/userprofile.dart';
import 'package:redid/src/views/dashboard/settings/appsettings.dart';
import 'package:redid/src/views/dashboard/wallet/userwallet.dart';

class CustomDrawer extends StatefulWidget {
  static String tag = 'CustomDrawer';
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  @override
  CustomDrawerState createState() => CustomDrawerState();

  void openDrawer(BuildContext context) {}
}

class CustomDrawerState extends State<CustomDrawer> {
  bool showUserDetails = false;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          // force a refresh so the app bar can be updated
        });
      });
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //width: MediaQuery.of(context).size.width * 0.70,
      child: Drawer(
        elevation: 4.0,
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: kBaseColor,
                  ),
                  currentAccountPicture: Container(
                    padding: const EdgeInsets.all(2),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: kBaseColor,
                      child: CircleAvatar(
                        radius: 27,
                        backgroundColor: kShadowColor,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25.0,
                          child: Icon(
                            Icons.person,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  accountName: Text(
                    'Rayhan Hasan'.toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Book-Antiqua',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: kTitleColor,
                    ),
                  ),
                  accountEmail: const Text(
                    '0123456789',
                    style: TextStyle(
                      fontFamily: 'Book-Antiqua',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: kTitleColor,
                    ),
                  ),
                  onDetailsPressed: () {
                    setState(() {
                      showUserDetails = !showUserDetails;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              flex: 40,
              child: ListView(
                padding: EdgeInsets.zero,
                controller: _scrollController,
                children: [
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Home",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Book-Antiqua',
                          fontSize: 14,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.home_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(Dashboard.tag);
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text("My Profile",
                        style: TextStyle(
                            color: kBaseColor,
                            fontFamily: 'Book-Antiqua',
                            fontSize: 14,
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w700)),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.person_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(UserProfile.tag);
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Activity Status",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Book-Antiqua',
                          fontSize: 14,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.toggle_on_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      //Navigator.of(context).pushNamed('');
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Terms and Conditions",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.gavel_rounded,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      //Navigator.of(context).pushNamed('');
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "My Wallet",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: FaIcon(
                          FontAwesomeIcons.handHoldingUsd,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(UserWallet.tag);
                    },
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Job History",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.history_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(JobHistory.tag);
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "eCommerce Soon",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(ECommerce.tag);
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Online Jobs",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.stream_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(OnlineJobs.tag);
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Notice",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.receipt_long_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(Notices.tag);
                    },
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "About redID",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.info_outline,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(About.tag);
                    },
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Settings",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.settings_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(AppSettings.tag);
                    },
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Rate Us",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.star_half_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      //Navigator.of(context).pushNamed();
                    },
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Help & Support",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.live_help_outlined,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(HelpSupport.tag);
                    },
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    indent: 18.0,
                    endIndent: 0.0,
                    color: kTitleTextColor,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0.0,
                    title: const Text(
                      "Sign Out",
                      style: TextStyle(
                        color: kBaseColor,
                        fontFamily: 'Book-Antiqua',
                        fontSize: 14,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: kWhiteShade,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(
                          Icons.logout_rounded,
                          color: kBaseColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed(SignIn.tag);
                    },
                  ),
                  const Divider(
                      height: 0.0,
                      thickness: 0.5,
                      indent: 18.0,
                      endIndent: 0.0,
                      color: kTitleTextColor),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
