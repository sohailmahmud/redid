import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/dashboard/about/about.dart';
import 'package:redid/src/views/dashboard/ecommerce/ecommerce.dart';
import 'package:redid/src/views/dashboard/help/helpsupport.dart';
import 'package:redid/src/views/dashboard/jobhistory/jobhistory.dart';
import 'package:redid/src/views/dashboard/notice/notices.dart';
import 'package:redid/src/views/dashboard/onlinejobs/onlinejobs.dart';
import 'package:redid/src/views/dashboard/profile/userprofile.dart';
import 'package:redid/src/views/dashboard/settings/appsettings.dart';
import 'package:redid/src/views/dashboard/wallet/userwallet.dart';
import 'package:redid/src/views/drawer/customdrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/views/notifications/notificationscreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  static String tag = 'Dashboard';

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int currentIndex = 1;
  final List<Widget> swiperBanner = [
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/b1.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/b2.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/b3.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/b4.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/b5.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/b6.svg",
        fit: BoxFit.fill,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[kBaseColor, kButtonColor],
    ).createShader(
      const Rect.fromLTWH(170.0, 10.0, 50.0, 15.0),
    );
    final appBar = AppBar(
      elevation: 0,
      titleSpacing: 0.0,
      backgroundColor: kBackgroundColor,
      iconTheme: const IconThemeData(color: kTextColor),
      toolbarHeight: 50,
      leadingWidth: 28,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu_open, size: 28),
            splashRadius: 25,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Transform.translate(
        offset: const Offset(-10, 0.0),
        child: Container(
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0, right: 0.0),
                child: SizedBox(
                  height: 50,
                  width: 35,
                  child: IconButton(
                    padding: const EdgeInsets.all(2),
                    icon: const Icon(
                      Icons.settings_outlined,
                      size: 25,
                      color: kTextColor,
                    ),
                    splashRadius: 16,
                    color: kTitleColor,
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppSettings.tag);
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Container(
                padding: EdgeInsets.zero,
                child: Text(
                  'redID',
                  style: TextStyle(
                    fontFamily: 'Chiller',
                    fontSize: 30,
                    letterSpacing: 0.8,
                    //color: kBaseColor,
                    fontWeight: FontWeight.w600,
                    foreground: Paint()..shader = linearGradient,
                    /* shadows: [
                      Shadow(
                        color: kBaseColor,
                        offset: Offset(0.0, 3.0),
                        blurRadius: 1.0,
                      ),
                    ], */
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
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
              icon: Badge(
                badgeContent: const Padding(
                  padding:
                      EdgeInsets.only(left: 2, right: 2, bottom: 4, top: 2),
                  child: Text(
                    '25',
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                padding: const EdgeInsets.all(2),
                badgeColor: kBaseColor,
                child: const FaIcon(
                  FontAwesomeIcons.bell,
                  size: 25,
                  color: kTextColor,
                ),
              ),
              splashRadius: Material.defaultSplashRadius / 2.2,
              color: kTitleColor,
              onPressed: () {
                Navigator.of(context).pushNamed(NotificationScreen.tag);
              },
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
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(UserProfile.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: FaIcon(
                            FontAwesomeIcons.userTie,
                            size: 34,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'My Profile',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(UserWallet.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: FaIcon(
                            FontAwesomeIcons.handHoldingUsd,
                            size: 34,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Wallet',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(JobHistory.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: FaIcon(
                            FontAwesomeIcons.history,
                            size: 35,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Job History',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ECommerce.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 35,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'eCommerce',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(OnlineJobs.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: Icon(
                            Icons.stream_outlined,
                            size: 35,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Online Jobs',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Notices.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: Icon(
                            Icons.receipt_long_outlined,
                            size: 35,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Notice',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 6.0, left: 10.0, bottom: 6.0, right: 5.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(HelpSupport.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: Icon(
                            Icons.live_help_outlined,
                            size: 35,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Help & Support',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.only(
                    top: 6.0, left: 5.0, bottom: 6.0, right: 5.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.pink.shade50,
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pushNamed(About.tag);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: const CircleAvatar(
                          backgroundColor: kBaseColor,
                          radius: 30.0,
                          child: Icon(
                            Icons.info_outline,
                            size: 38,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'About redId',
                          style: TextStyle(
                            fontFamily: 'Chiller',
                            fontSize: 16.0,
                            color: kBaseColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ],
    );
    final swiperIndicator = SizedBox(
      height: 230,
      //width: 350,
      child: Swiper(
        outer: false,
        itemCount: swiperBanner.length,
        itemBuilder: (BuildContext context, int index) {
          return swiperBanner[index % swiperBanner.length];
        },
        pagination: const SwiperPagination(
          margin: EdgeInsets.only(bottom: 4.0),
          builder: SwiperPagination.dots,
          alignment: Alignment.bottomCenter,
        ),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        autoplayDisableOnInteraction: true,
        autoplayDelay: 3000,
        onIndexChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
    return Scaffold(
      appBar: appBar,
      drawer: const CustomDrawer(),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 2.0),
          children: <Widget>[
            swiperIndicator,
            const SizedBox(height: 10),
            dashboardItem,
          ],
        ),
      ),
    );
  }
}
