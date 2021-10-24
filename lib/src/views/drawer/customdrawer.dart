import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redid/src/styles/colors.dart';
import 'package:redid/src/views/auth/signin/signin.dart';

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
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            flex: 50,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: false,
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
                        Icons.home,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
                  title: const Text("Profile",
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
                        Icons.person,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
                    "Active Status",
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
                    Navigator.of(context).pushNamed('');
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
                    Navigator.of(context).pushNamed('');
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
                    "Wallet",
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
                        Icons.account_balance_wallet_rounded,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
                        Icons.history_edu_rounded,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
                        Icons.shopping_cart,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
                        Icons.work_rounded,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
                        Icons.assignment_rounded,
                        color: kBaseColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
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
    );
  }
}
