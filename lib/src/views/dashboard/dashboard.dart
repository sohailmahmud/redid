import 'dart:ui';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redid/src/styles/colors.dart';
import 'package:redid/src/views/drawer/customdrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        "assets/icons/banner1.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/banner2.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/banner3.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/banner4.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/banner5.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/banner6.svg",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      padding: EdgeInsets.zero,
      child: Image.asset(
        "assets/icons/banner7.svg",
        fit: BoxFit.fill,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 10.0,
      titleSpacing: 0.0,
      backgroundColor: kBackgroundColor,
      iconTheme: const IconThemeData(color: kTextColor),
      toolbarHeight: 50,
      leadingWidth: 28,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu_open, size: 28),
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
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Container(
                padding: EdgeInsets.zero,
                child: const Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'Book-Antiqua',
                    fontSize: 22,
                    color: kBaseColor,
                    fontWeight: FontWeight.bold,
                    /* shadows: [
                      Shadow(
                        color: kButtonColor,
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
              icon: const FaIcon(
                FontAwesomeIcons.bell,
                size: 28,
                color: kTextColor,
              ),
              splashRadius: Material.defaultSplashRadius / 2.2,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 22.0,
                          child: FaIcon(
                            FontAwesomeIcons.userTie,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'My Profile',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 16.0,
                            color: kCardTitleColor,
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
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25.0,
                          child: FaIcon(
                            FontAwesomeIcons.handHoldingUsd,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Wallet',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 16.0,
                            color: kCardTitleColor,
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
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 22.0,
                          child: FaIcon(
                            FontAwesomeIcons.history,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Summary',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 16.0,
                            color: kCardTitleColor,
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
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 22.0,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'eCommerce',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 16.0,
                            color: kCardTitleColor,
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
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 22.0,
                          child: Icon(
                            Icons.stream_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Online Jobs',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 16.0,
                            color: kCardTitleColor,
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
                  color: kBaseColor,
                  elevation: 10,
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 22.0,
                          child: Icon(
                            Icons.receipt_long_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: const Text(
                          'Notice',
                          style: TextStyle(
                            fontFamily: 'Book-Antiqua',
                            fontSize: 16.0,
                            color: kCardTitleColor,
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
      ],
    );
    final swiperIndicator = Container(
      height: 300,
      width: 410,
      child: Swiper(
        outer: false,
        itemCount: swiperBanner.length,
        itemBuilder: (BuildContext context, int index) {
          return swiperBanner[index % swiperBanner.length];
        },
        pagination: const SwiperPagination(
          margin: EdgeInsets.only(bottom: 5.0),
          builder: SwiperPagination.dots,
          alignment: Alignment.bottomCenter,
        ),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        autoplayDisableOnInteraction: true,
        autoplayDelay: 3000,
        fade: 0.8,
        onIndexChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      constraints: BoxConstraints.tight(const Size(350, 350)),
    );
    return Scaffold(
      appBar: appBar,
      drawer: const CustomDrawer(),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 12.0),
          children: <Widget>[
            dashboardItem,
            const SizedBox(height: 30),
            swiperIndicator,
          ],
        ),
      ),
    );
  }
}
