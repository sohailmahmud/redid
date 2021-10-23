import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redid/src/styles/colors.dart';

class Dashboard extends StatefulWidget {
  static String tag = 'Dashboard';

  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  var rating = 5.0;

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 10.0,
      backgroundColor: kBackgroundColor,
      iconTheme: const IconThemeData(color: kTitleColor),
      toolbarHeight: 50,
      leading: Padding(
        padding: const EdgeInsets.only(left: 0.0, right: 10.0),
        child: SizedBox(
          height: 50,
          width: 35,
          child: IconButton(
            padding: const EdgeInsets.all(2),
            icon: const Icon(
              Icons.settings,
              size: 28,
              color: kTextColor,
            ),
            splashRadius: 20,
            color: kTitleColor,
            onPressed: () {},
          ),
        ),
      ),
      title: Container(
        padding: EdgeInsets.zero,
        child: const Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Book-Antiqua',
            fontSize: 22,
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 10.0),
          child: SizedBox(
            height: 50,
            width: 35,
            child: IconButton(
              padding: const EdgeInsets.all(2),
              icon: const Icon(
                Icons.notifications_none,
                size: 28,
                color: kTextColor,
              ),
              splashRadius: 20,
              color: kTitleColor,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
    final dashboardItem = Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, bottom: 6.0, right: 5.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'User',
                      style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 16.0,
                          color: kTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 10.0, left: 5.0, bottom: 6.0, right: 5.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'Wallet',
                      style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 17.0,
                          color: kTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 10.0, left: 5.0, bottom: 6.0, right: 10.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'Job History',
                      style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 16.0,
                          color: kTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 6.0, left: 10.0, bottom: 6.0, right: 5.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'eCommerce Soon',
                      style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 17.0,
                          color: kTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 6.0, left: 5.0, bottom: 6.0, right: 5.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'Online Jobs',
                      style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 16.0,
                          color: kTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 6.0, left: 5.0, bottom: 6.0, right: 10.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'Notice',
                      style: TextStyle(
                          fontFamily: 'Book-Antiqua',
                          fontSize: 16.0,
                          color: kTextColor,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 5,
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
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/homed.png'),
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
                            fontFamily: 'Segoe',
                            fontSize: 16,
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w700)),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/profiled.png'),
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
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/statusd.png'),
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
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(Icons.description),
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
                      "Privacy Policy",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Icon(Icons.price_check_rounded),
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
                      "About Us",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/aboutd.png'),
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
                      "Contact Us",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/contactd.png'),
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
                      "Settings",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/settingsd.png'),
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
                      "Version 0.8.57+6",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/versiond.png'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "");
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
                      "Sign Out",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/signoutd.png'),
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
                      "Renew",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/renewd.png'),
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
                      "Reviews",
                      style: TextStyle(
                          color: kBaseColor,
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: kShadowColor,
                      radius: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.0,
                        child: Image.asset('assets/icons/doctor/reviewsd.png'),
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
                ],
              ),
            )
          ],
        ),
      ),
      appBar: appBar,
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Column(
                children: [
                  dashboardItem,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
